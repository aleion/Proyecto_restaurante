require 'test_helper'

class LiquidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liquido = liquidos(:one)
  end

  test "should get index" do
    get liquidos_url
    assert_response :success
  end

  test "should get new" do
    get new_liquido_url
    assert_response :success
  end

  test "should create liquido" do
    assert_difference('Liquido.count') do
      post liquidos_url, params: { liquido: { categoria: @liquido.categoria, detalle: @liquido.detalle, nombre: @liquido.nombre, precio: @liquido.precio } }
    end

    assert_redirected_to liquido_url(Liquido.last)
  end

  test "should show liquido" do
    get liquido_url(@liquido)
    assert_response :success
  end

  test "should get edit" do
    get edit_liquido_url(@liquido)
    assert_response :success
  end

  test "should update liquido" do
    patch liquido_url(@liquido), params: { liquido: { categoria: @liquido.categoria, detalle: @liquido.detalle, nombre: @liquido.nombre, precio: @liquido.precio } }
    assert_redirected_to liquido_url(@liquido)
  end

  test "should destroy liquido" do
    assert_difference('Liquido.count', -1) do
      delete liquido_url(@liquido)
    end

    assert_redirected_to liquidos_url
  end
end
