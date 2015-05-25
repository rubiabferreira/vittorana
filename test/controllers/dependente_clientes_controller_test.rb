require 'test_helper'

class DependenteClientesControllerTest < ActionController::TestCase
  setup do
    @dependente_cliente = dependente_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dependente_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dependente_cliente" do
    assert_difference('DependenteCliente.count') do
      post :create, dependente_cliente: { datanascimento: @dependente_cliente.datanascimento, nome: @dependente_cliente.nome }
    end

    assert_redirected_to dependente_cliente_path(assigns(:dependente_cliente))
  end

  test "should show dependente_cliente" do
    get :show, id: @dependente_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dependente_cliente
    assert_response :success
  end

  test "should update dependente_cliente" do
    patch :update, id: @dependente_cliente, dependente_cliente: { datanascimento: @dependente_cliente.datanascimento, nome: @dependente_cliente.nome }
    assert_redirected_to dependente_cliente_path(assigns(:dependente_cliente))
  end

  test "should destroy dependente_cliente" do
    assert_difference('DependenteCliente.count', -1) do
      delete :destroy, id: @dependente_cliente
    end

    assert_redirected_to dependente_clientes_path
  end
end
