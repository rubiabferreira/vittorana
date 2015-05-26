require 'test_helper'

class ContasAPagarControllerTest < ActionController::TestCase
  setup do
    @conta_a_pagar = contas_a_pagar(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas_a_pagar)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_a_pagar" do
    assert_difference('ContaAPagar.count') do
      post :create, conta_a_pagar: { fornecedor_id: @conta_a_pagar.fornecedor_id, valor: @conta_a_pagar.valor, vencimento: @conta_a_pagar.vencimento }
    end

    assert_redirected_to conta_a_pagar_path(assigns(:conta_a_pagar))
  end

  test "should show conta_a_pagar" do
    get :show, id: @conta_a_pagar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_a_pagar
    assert_response :success
  end

  test "should update conta_a_pagar" do
    patch :update, id: @conta_a_pagar, conta_a_pagar: { fornecedor_id: @conta_a_pagar.fornecedor_id, valor: @conta_a_pagar.valor, vencimento: @conta_a_pagar.vencimento }
    assert_redirected_to conta_a_pagar_path(assigns(:conta_a_pagar))
  end

  test "should destroy conta_a_pagar" do
    assert_difference('ContaAPagar.count', -1) do
      delete :destroy, id: @conta_a_pagar
    end

    assert_redirected_to contas_a_pagar_path
  end
end
