class SessionsController < ApplicationController

def new
end

def create
  # identify the user
  user = User.find_by_email(params[:sessions][:email].downcase)

  #if the user exists = find_by_email method returned a value, now check if the passwords match
  if user && user.authenticate(params[:sessions][:password])
     #sign in user
     sign_in user
     #redirect to the home page
     redirect_to root_path #for now
  elsif (!user)
      #if the user doesn't exist
      flash[:notice] = "An account associated with this email address doesn't exist"
      render 'new'
    else
      #if the password doesn't match
      flash[:notice] = "You entered the wrong password"
      render 'new'
  end
end

  def destroy
    sign_out
    redirect_to root_path
  end

end
