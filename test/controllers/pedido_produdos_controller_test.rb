require 'test_helper'

class PedidoProdudosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_produdo = pedido_produdos(:one)
  end

  test "should get index" do
    get pedido_produdos_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_produdo_url
    assert_response :success
  end

  test "should create pedido_produdo" do
    assert_difference('PedidoProdudo.count') do
      post pedido_produdos_url, params: { pedido_produdo: { pedido: @pedido_produdo.pedido, produto_id: @pedido_produdo.produto_id, valor: @pedido_produdo.valor } }
    end

    assert_redirected_to pedido_produdo_url(PedidoProdudo.last)
  end

  test "should show pedido_produdo" do
    get pedido_produdo_url(@pedido_produdo)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_produdo_url(@pedido_produdo)
    assert_response :success
  end

  test "should update pedido_produdo" do
    patch pedido_produdo_url(@pedido_produdo), params: { pedido_produdo: { pedido: @pedido_produdo.pedido, produto_id: @pedido_produdo.produto_id, valor: @pedido_produdo.valor } }
    assert_redirected_to pedido_produdo_url(@pedido_produdo)
  end

  test "should destroy pedido_produdo" do
    assert_difference('PedidoProdudo.count', -1) do
      delete pedido_produdo_url(@pedido_produdo)
    end

    assert_redirected_to pedido_produdos_url
  end
end
