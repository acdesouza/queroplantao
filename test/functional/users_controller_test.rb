require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show if authenticated user" do
    sign_in
    get :show
    assert_response :success
  end

  test "should redirect to root unless authenticated user" do
    get :show
    assert_redirected_to controller: 'pages', action: 'land'
  end

  test "should get edit if authenticated user" do
    sign_in
    get :edit
    assert_response :success
    assert_equal users(:ac), assigns(:user)
  end

  test "should not get edit, but redirect to root without an authenticated user" do
    get :edit
    assert_redirected_to controller: 'pages', action: 'land'
  end
end
