module SessionsHelper

  #sign in method for a user
  def sign_in(user)
    cookies.permanent[:token] = user.token #we add the user token to the cookie
    self.current_user = user
  end

  #defines the function called above
  def current_user=(user)
    @current_user = user
  end

  # the actual current_method
  def current_user
    @current_user ||= User.find_by_token(cookies[:token])
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    current_user = nil
    cookies.delete(:token)
  end

end
