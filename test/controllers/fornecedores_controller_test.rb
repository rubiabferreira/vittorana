require 'test_helper'

class FornecedoresControllerTest < ActionController::TestCase
  setup do
    @fornecedor = fornecedores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedor" do
    assert_difference('Fornecedor.count') do
      post :create, fornecedor: { bairro: @fornecedor.bairro, categoria_id: @fornecedor.categoria_id, cep: @fornecedor.cep, cidade_id: @fornecedor.cidade_id, cnpj: @fornecedor.cnpj, email: @fornecedor.email, endereco: @fornecedor.endereco, estado_id: @fornecedor.estado_id, ie: @fornecedor.ie, im: @fornecedor.im, nomefantasia: @fornecedor.nomefantasia, razaosocial: @fornecedor.razaosocial, site: @fornecedor.site, tcelular: @fornecedor.tcelular, tcomercial: @fornecedor.tcomercial }
    end

    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should show fornecedor" do
    get :show, id: @fornecedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fornecedor
    assert_response :success
  end

  test "should update fornecedor" do
    patch :update, id: @fornecedor, fornecedor: { bairro: @fornecedor.bairro, categoria_id: @fornecedor.categoria_id, cep: @fornecedor.cep, cidade_id: @fornecedor.cidade_id, cnpj: @fornecedor.cnpj, email: @fornecedor.email, endereco: @fornecedor.endereco, estado_id: @fornecedor.estado_id, ie: @fornecedor.ie, im: @fornecedor.im, nomefantasia: @fornecedor.nomefantasia, razaosocial: @fornecedor.razaosocial, site: @fornecedor.site, tcelular: @fornecedor.tcelular, tcomercial: @fornecedor.tcomercial }
    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should destroy fornecedor" do
    assert_difference('Fornecedor.count', -1) do
      delete :destroy, id: @fornecedor
    end

    assert_redirected_to fornecedores_path
  end
end
