require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should create session" do
    add_facebook_login_on_request(@request.env)

    get :create
    assert_response :redirect
    assert_redirected_to edit_user_path
  end
end
