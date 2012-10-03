require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
      post :create, user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name,
                           password: @user.password, password_confirmation: @user.password_confirmation }
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end

  #Presence of email field in new user view form
  test "should have email password fields" do
    get :new
    #select form
    assert_select 'form' do
         #select css element label from form and for each one do
      css_select("label").each do |l|
          #select css label with "Email" tag
          name = css_select(l, "Email")
          # if exists respond "success"
          if name
           assert_response :success
       end
     end
   end
  end
end
