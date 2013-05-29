require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get land" do
    get :land
    assert_response :success
  end

  test "landpage should redirect to user#edit when user hasn't a phone" do
    sign_in users(:ac)

    get :land
    assert_redirected_to edit_user_path
  end

  test "landpage should redirect to pages#greeting when user has a phone" do
    sign_in users(:marina)

    get :land
    assert_redirected_to greeting_path
  end

  test "should get greeting" do
    sign_in users(:ac)

    get :greeting
    assert_response :success
  end
end
