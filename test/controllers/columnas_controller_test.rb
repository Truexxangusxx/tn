require 'test_helper'

class ColumnasControllerTest < ActionController::TestCase
  setup do
    @columna = columnas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:columnas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create columna" do
    assert_difference('Columna.count') do
      post :create, columna: { nombre: @columna.nombre }
    end

    assert_redirected_to columna_path(assigns(:columna))
  end

  test "should show columna" do
    get :show, id: @columna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @columna
    assert_response :success
  end

  test "should update columna" do
    patch :update, id: @columna, columna: { nombre: @columna.nombre }
    assert_redirected_to columna_path(assigns(:columna))
  end

  test "should destroy columna" do
    assert_difference('Columna.count', -1) do
      delete :destroy, id: @columna
    end

    assert_redirected_to columnas_path
  end
end
