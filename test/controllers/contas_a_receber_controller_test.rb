require 'test_helper'

class ContasAReceberControllerTest < ActionController::TestCase
  setup do
    @conta_a_receber = contas_a_receber(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas_a_receber)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_a_receber" do
    assert_difference('ContaAReceber.count') do
      post :create, conta_a_receber: { cliente_id: @conta_a_receber.cliente_id, valor: @conta_a_receber.valor, vencimento: @conta_a_receber.vencimento }
    end

    assert_redirected_to conta_a_receber_path(assigns(:conta_a_receber))
  end

  test "should show conta_a_receber" do
    get :show, id: @conta_a_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_a_receber
    assert_response :success
  end

  test "should update conta_a_receber" do
    patch :update, id: @conta_a_receber, conta_a_receber: { cliente_id: @conta_a_receber.cliente_id, valor: @conta_a_receber.valor, vencimento: @conta_a_receber.vencimento }
    assert_redirected_to conta_a_receber_path(assigns(:conta_a_receber))
  end

  test "should destroy conta_a_receber" do
    assert_difference('ContaAReceber.count', -1) do
      delete :destroy, id: @conta_a_receber
    end

    assert_redirected_to contas_a_receber_path
  end
end
