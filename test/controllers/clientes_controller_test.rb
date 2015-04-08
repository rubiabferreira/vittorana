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
      post :create, cliente: { ItensAvulsos: @cliente.ItensAvulsos, bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, conjuge: @cliente.conjuge, cortesia: @cliente.cortesia, cpf: @cliente.cpf, dataEvento: @cliente.dataEvento, desconto: @cliente.desconto, diaSemana: @cliente.diaSemana, duracaoFesta: @cliente.duracaoFesta, endereco: @cliente.endereco, entrada: @cliente.entrada, estado: @cliente.estado, evento: @cliente.evento, formaPagamento: @cliente.formaPagamento, gerarContrato: @cliente.gerarContrato, horarioFesta: @cliente.horarioFesta, nDocumento: @cliente.nDocumento, nome: @cliente.nome, obs: @cliente.obs, qtdeAdultos: @cliente.qtdeAdultos, qtdeCriancas: @cliente.qtdeCriancas, rg: @cliente.rg, tcelular: @cliente.tcelular, tema: @cliente.tema, tresidencial: @cliente.tresidencial, valor: @cliente.valor, valorConsumacao: @cliente.valorConsumacao }
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
    patch :update, id: @cliente, cliente: { ItensAvulsos: @cliente.ItensAvulsos, bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, conjuge: @cliente.conjuge, cortesia: @cliente.cortesia, cpf: @cliente.cpf, dataEvento: @cliente.dataEvento, desconto: @cliente.desconto, diaSemana: @cliente.diaSemana, duracaoFesta: @cliente.duracaoFesta, endereco: @cliente.endereco, entrada: @cliente.entrada, estado: @cliente.estado, evento: @cliente.evento, formaPagamento: @cliente.formaPagamento, gerarContrato: @cliente.gerarContrato, horarioFesta: @cliente.horarioFesta, nDocumento: @cliente.nDocumento, nome: @cliente.nome, obs: @cliente.obs, qtdeAdultos: @cliente.qtdeAdultos, qtdeCriancas: @cliente.qtdeCriancas, rg: @cliente.rg, tcelular: @cliente.tcelular, tema: @cliente.tema, tresidencial: @cliente.tresidencial, valor: @cliente.valor, valorConsumacao: @cliente.valorConsumacao }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
