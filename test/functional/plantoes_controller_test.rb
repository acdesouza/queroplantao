require 'test_helper'

class PlantoesControllerTest < ActionController::TestCase
  setup do
    @plantao = plantoes(:one)
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

  test "should create plantao" do
    assert_difference('Plantao.count') do
      post :create, plantao: { contactName: @plantao.contactName, contactPhone: @plantao.contactPhone, how_long: @plantao.how_long, how_much: @plantao.how_much, obs: @plantao.obs, specialty: @plantao.specialty, when: @plantao.when, where: @plantao.where }
    end

    assert_redirected_to plantao_path(assigns(:plantao))
  end

  test "should show plantao" do
    get :show, id: @plantao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plantao
    assert_response :success
  end

  test "should update plantao" do
    put :update, id: @plantao, plantao: { contactName: @plantao.contactName, contactPhone: @plantao.contactPhone, how_long: @plantao.how_long, how_much: @plantao.how_much, obs: @plantao.obs, specialty: @plantao.specialty, when: @plantao.when, where: @plantao.where }
    assert_redirected_to plantao_path(assigns(:plantao))
  end

  test "should destroy plantao" do
    assert_difference('Plantao.count', -1) do
      delete :destroy, id: @plantao
    end

    assert_redirected_to plantoes_path
  end
end
