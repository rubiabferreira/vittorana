require 'test_helper'

class TemasControllerTest < ActionController::TestCase
  setup do
    @tema = temas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tema" do
    assert_difference('Tema.count') do
      post :create, tema: { nome: @tema.nome, ob: @tema.ob }
    end

    assert_redirected_to tema_path(assigns(:tema))
  end

  test "should show tema" do
    get :show, id: @tema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tema
    assert_response :success
  end

  test "should update tema" do
    patch :update, id: @tema, tema: { nome: @tema.nome, ob: @tema.ob }
    assert_redirected_to tema_path(assigns(:tema))
  end

  test "should destroy tema" do
    assert_difference('Tema.count', -1) do
      delete :destroy, id: @tema
    end

    assert_redirected_to temas_path
  end
end
