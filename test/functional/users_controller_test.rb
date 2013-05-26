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

  test 'should update user details, when user is logged in' do
    ac_user = users(:ac)

    sign_in ac_user
    put :update, user: {phone: '021 2234-5678',
                        graduation_year: 2002 }

    saved_user = User.find ac_user.id
    assert_equal 2002, saved_user.graduation_year
    assert_equal '021 2234-5678', saved_user.phone

    assert_redirected_to greeting_path
  end

  test 'should not update user details, when user is not logged in' do
    put :update, user: {phone: '021 2234-5678',
                        graduation_year: 2002 }

    assert_redirected_to root_path
  end
end
