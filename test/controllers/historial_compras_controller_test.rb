require 'test_helper'

class HistorialComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historial_compra = historial_compras(:one)
  end

  test "should get index" do
    get historial_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_historial_compra_url
    assert_response :success
  end

  test "should create historial_compra" do
    assert_difference('HistorialCompra.count') do
      post historial_compras_url, params: { historial_compra: { cantidad: @historial_compra.cantidad, compra_id: @historial_compra.compra_id, producto_id: @historial_compra.producto_id, total: @historial_compra.total, usuario_id: @historial_compra.usuario_id } }
    end

    assert_redirected_to historial_compra_url(HistorialCompra.last)
  end

  test "should show historial_compra" do
    get historial_compra_url(@historial_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_historial_compra_url(@historial_compra)
    assert_response :success
  end

  test "should update historial_compra" do
    patch historial_compra_url(@historial_compra), params: { historial_compra: { cantidad: @historial_compra.cantidad, compra_id: @historial_compra.compra_id, producto_id: @historial_compra.producto_id, total: @historial_compra.total, usuario_id: @historial_compra.usuario_id } }
    assert_redirected_to historial_compra_url(@historial_compra)
  end

  test "should destroy historial_compra" do
    assert_difference('HistorialCompra.count', -1) do
      delete historial_compra_url(@historial_compra)
    end

    assert_redirected_to historial_compras_url
  end
end
