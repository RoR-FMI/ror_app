require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

#tests home page for a title
  test "should have title" do
    get :home
    assert_select 'title', "FMI-RoRApp | Home"
  end

# test the Welcome header message
  test "should have header" do
    get :home
    assert_select 'h1', "WELCOME!"
  end
end
