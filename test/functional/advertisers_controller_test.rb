require 'test_helper'

class AdvertisersControllerTest < ActionController::TestCase
  setup do
    @advertiser = advertisers(:one)
    session[:advertiser_id] = @advertiser.id
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertiser" do
    assert_difference('Advertiser.count') do
      post :create, advertiser: { email: @advertiser.email, password: "123" }
    end

    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  test "should show advertiser" do
    get :show, id: @advertiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertiser
    assert_response :success
  end

  test "should update advertiser" do
    put :update, id: @advertiser, advertiser: { email: @advertiser.email, password: @advertiser.password }
    assert_redirected_to advertiser_path(assigns(:advertiser))
  end


end
