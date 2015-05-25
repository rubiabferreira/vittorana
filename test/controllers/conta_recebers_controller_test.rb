require 'test_helper'

class ContaRecebersControllerTest < ActionController::TestCase
  setup do
    @conta_receber = conta_recebers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conta_recebers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta_receber" do
    assert_difference('ContaReceber.count') do
      post :create, conta_receber: { cliente: @conta_receber.cliente, cortesia: @conta_receber.cortesia, dataEvento: @conta_receber.dataEvento, dependente: @conta_receber.dependente, desconto: @conta_receber.desconto, diaSemana: @conta_receber.diaSemana, duracaoFesta: @conta_receber.duracaoFesta, entrada: @conta_receber.entrada, evento: @conta_receber.evento, formapagamento: @conta_receber.formapagamento, horarioFesta: @conta_receber.horarioFesta, itemavulso: @conta_receber.itemavulso, ndocumento: @conta_receber.ndocumento, obs: @conta_receber.obs, qtdeadultos: @conta_receber.qtdeadultos, qtdecriancas: @conta_receber.qtdecriancas, tema: @conta_receber.tema, valorConsumacao: @conta_receber.valorConsumacao, valorfesta: @conta_receber.valorfesta }
    end

    assert_redirected_to conta_receber_path(assigns(:conta_receber))
  end

  test "should show conta_receber" do
    get :show, id: @conta_receber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta_receber
    assert_response :success
  end

  test "should update conta_receber" do
    patch :update, id: @conta_receber, conta_receber: { cliente: @conta_receber.cliente, cortesia: @conta_receber.cortesia, dataEvento: @conta_receber.dataEvento, dependente: @conta_receber.dependente, desconto: @conta_receber.desconto, diaSemana: @conta_receber.diaSemana, duracaoFesta: @conta_receber.duracaoFesta, entrada: @conta_receber.entrada, evento: @conta_receber.evento, formapagamento: @conta_receber.formapagamento, horarioFesta: @conta_receber.horarioFesta, itemavulso: @conta_receber.itemavulso, ndocumento: @conta_receber.ndocumento, obs: @conta_receber.obs, qtdeadultos: @conta_receber.qtdeadultos, qtdecriancas: @conta_receber.qtdecriancas, tema: @conta_receber.tema, valorConsumacao: @conta_receber.valorConsumacao, valorfesta: @conta_receber.valorfesta }
    assert_redirected_to conta_receber_path(assigns(:conta_receber))
  end

  test "should destroy conta_receber" do
    assert_difference('ContaReceber.count', -1) do
      delete :destroy, id: @conta_receber
    end

    assert_redirected_to conta_recebers_path
  end
end
