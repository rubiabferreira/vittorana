require 'test_helper'

class EventosControllerTest < ActionController::TestCase
  setup do
    @evento = eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evento" do
    assert_difference('Evento.count') do
      post :create, evento: { cliente_id: @evento.cliente_id, consumacao: @evento.consumacao, contrato: @evento.contrato, cortesia: @evento.cortesia, desconto: @evento.desconto, documento: @evento.documento, entrada: @evento.entrada, fim: @evento.fim, forma_pagamento: @evento.forma_pagamento, inicio: @evento.inicio, itens_avulsos: @evento.itens_avulsos, num_adultos: @evento.num_adultos, num_criancas: @evento.num_criancas, obs: @evento.obs, tema_id: @evento.tema_id }
    end

    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should show evento" do
    get :show, id: @evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evento
    assert_response :success
  end

  test "should update evento" do
    patch :update, id: @evento, evento: { cliente_id: @evento.cliente_id, consumacao: @evento.consumacao, contrato: @evento.contrato, cortesia: @evento.cortesia, desconto: @evento.desconto, documento: @evento.documento, entrada: @evento.entrada, fim: @evento.fim, forma_pagamento: @evento.forma_pagamento, inicio: @evento.inicio, itens_avulsos: @evento.itens_avulsos, num_adultos: @evento.num_adultos, num_criancas: @evento.num_criancas, obs: @evento.obs, tema_id: @evento.tema_id }
    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should destroy evento" do
    assert_difference('Evento.count', -1) do
      delete :destroy, id: @evento
    end

    assert_redirected_to eventos_path
  end
end
