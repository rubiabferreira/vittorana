require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade_id: @cliente.cidade_id, conjuge: @cliente.conjuge, cortesia: @cliente.cortesia, cpf: @cliente.cpf, data_evento: @cliente.data_evento, desconto: @cliente.desconto, dia_semana: @cliente.dia_semana, duracao_festa: @cliente.duracao_festa, endereco: @cliente.endereco, entrada: @cliente.entrada, estado_id: @cliente.estado_id, evento: @cliente.evento, forma_pagamento: @cliente.forma_pagamento, gerar_contrato: @cliente.gerar_contrato, horario_festa: @cliente.horario_festa, itens_avulsos: @cliente.itens_avulsos, nome: @cliente.nome, num_documento: @cliente.num_documento, obs: @cliente.obs, qtde_adultos: @cliente.qtde_adultos, qtde_criancas: @cliente.qtde_criancas, rg: @cliente.rg, tcelular: @cliente.tcelular, tema: @cliente.tema, tresidencial: @cliente.tresidencial, valor: @cliente.valor, valor_consumacao: @cliente.valor_consumacao }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade_id: @cliente.cidade_id, conjuge: @cliente.conjuge, cortesia: @cliente.cortesia, cpf: @cliente.cpf, data_evento: @cliente.data_evento, desconto: @cliente.desconto, dia_semana: @cliente.dia_semana, duracao_festa: @cliente.duracao_festa, endereco: @cliente.endereco, entrada: @cliente.entrada, estado_id: @cliente.estado_id, evento: @cliente.evento, forma_pagamento: @cliente.forma_pagamento, gerar_contrato: @cliente.gerar_contrato, horario_festa: @cliente.horario_festa, itens_avulsos: @cliente.itens_avulsos, nome: @cliente.nome, num_documento: @cliente.num_documento, obs: @cliente.obs, qtde_adultos: @cliente.qtde_adultos, qtde_criancas: @cliente.qtde_criancas, rg: @cliente.rg, tcelular: @cliente.tcelular, tema: @cliente.tema, tresidencial: @cliente.tresidencial, valor: @cliente.valor, valor_consumacao: @cliente.valor_consumacao }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
