require 'test_helper'

class PlantoesControllerTest < ActionController::TestCase
  setup do
    @planto = plantoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plantoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planto" do
    assert_difference('Plantao.count') do
      post :create, planto: { contactName: @planto.contactName, contactPhone: @planto.contactPhone, how_long: @planto.how_long, how_much: @planto.how_much, obs: @planto.obs, specialty: @planto.specialty, when: @planto.when, where: @planto.where }
    end

    assert_redirected_to planto_path(assigns(:planto))
  end

  test "should show planto" do
    get :show, id: @planto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planto
    assert_response :success
  end

  test "should update planto" do
    put :update, id: @planto, planto: { contactName: @planto.contactName, contactPhone: @planto.contactPhone, how_long: @planto.how_long, how_much: @planto.how_much, obs: @planto.obs, specialty: @planto.specialty, when: @planto.when, where: @planto.where }
    assert_redirected_to planto_path(assigns(:planto))
  end

  test "should destroy planto" do
    assert_difference('Plantao.count', -1) do
      delete :destroy, id: @planto
    end

    assert_redirected_to plantoes_path
  end
end
