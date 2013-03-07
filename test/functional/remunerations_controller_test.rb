require 'test_helper'

class RemunerationsControllerTest < ActionController::TestCase
  setup do
    @remuneration = remunerations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remunerations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remuneration" do
    assert_difference('Remuneration.count') do
      post :create, remuneration: { how_long: @remuneration.how_long, how_much: @remuneration.how_much, joker: @remuneration.joker, night_turn: @remuneration.night_turn, specialty: @remuneration.specialty }
    end

    assert_redirected_to remuneration_path(assigns(:remuneration))
  end

  test "should show remuneration" do
    get :show, id: @remuneration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remuneration
    assert_response :success
  end

  test "should update remuneration" do
    put :update, id: @remuneration, remuneration: { how_long: @remuneration.how_long, how_much: @remuneration.how_much, joker: @remuneration.joker, night_turn: @remuneration.night_turn, specialty: @remuneration.specialty }
    assert_redirected_to remuneration_path(assigns(:remuneration))
  end

  test "should destroy remuneration" do
    assert_difference('Remuneration.count', -1) do
      delete :destroy, id: @remuneration
    end

    assert_redirected_to remunerations_path
  end
end
