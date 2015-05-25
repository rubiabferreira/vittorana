require 'test_helper'

class CategoriaFornecedorsControllerTest < ActionController::TestCase
  setup do
    @categoria_fornecedor = categoria_fornecedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_fornecedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_fornecedor" do
    assert_difference('CategoriaFornecedor.count') do
      post :create, categoria_fornecedor: { obs: @categoria_fornecedor.obs, tipo: @categoria_fornecedor.tipo }
    end

    assert_redirected_to categoria_fornecedor_path(assigns(:categoria_fornecedor))
  end

  test "should show categoria_fornecedor" do
    get :show, id: @categoria_fornecedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_fornecedor
    assert_response :success
  end

  test "should update categoria_fornecedor" do
    patch :update, id: @categoria_fornecedor, categoria_fornecedor: { obs: @categoria_fornecedor.obs, tipo: @categoria_fornecedor.tipo }
    assert_redirected_to categoria_fornecedor_path(assigns(:categoria_fornecedor))
  end

  test "should destroy categoria_fornecedor" do
    assert_difference('CategoriaFornecedor.count', -1) do
      delete :destroy, id: @categoria_fornecedor
    end

    assert_redirected_to categoria_fornecedors_path
  end
end
