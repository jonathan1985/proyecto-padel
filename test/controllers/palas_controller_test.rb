require 'test_helper'

class palasControllerTest < ActionController::TestCase
  setup do
    @palas = palas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palas" do
    assert_difference('palas.count') do
      post :create, palas: { directores: @palas.directores, enlace_imagen: @palas.enlace_imagen, imagen: @palas.imagen, informacion: @palas.informacion, nombre: @palas.nombre, puntuacion: @palas.puntuacion, sinopsis: @palas.sinopsis, titulo_original: @palas.titulo_original, votos: @palas.votos }
    end

    assert_redirected_to palas_path(assigns(:palas))
  end

  test "should show palas" do
    get :show, id: @palas
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palas
    assert_response :success
  end

  test "should update palas" do
    patch :update, id: @palas, palas: { directores: @palas.directores, enlace_imagen: @palas.enlace_imagen, imagen: @palas.imagen, informacion: @palas.informacion, nombre: @palas.nombre, puntuacion: @palas.puntuacion, sinopsis: @palas.sinopsis, titulo_original: @palas.titulo_original, votos: @palas.votos }
    assert_redirected_to palas_path(assigns(:palas))
  end

  test "should destroy palas" do
    assert_difference('palas.count', -1) do
      delete :destroy, id: @palas
    end

    assert_redirected_to palas_index_path
  end
end
