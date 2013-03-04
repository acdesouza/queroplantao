require 'test_helper'

class AdvertiserSessionControllerTest < ActionController::TestCase

  setup do
    @advertiser = advertisers(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login advertiser" do
    post :create,  { email: @advertiser.email, password: "123" }
    assert_redirected_to root_path 
  end

  test "should not login advertiser" do
    post :create,  { email: @advertiser.email, password: "password_incorreto" }
    assert_response :success 
  end

  test "should logout advertiser" do
    post :destroy,  { id: @advertiser.email}
    assert_redirected_to root_path 
  end
end
