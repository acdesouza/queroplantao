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
end
