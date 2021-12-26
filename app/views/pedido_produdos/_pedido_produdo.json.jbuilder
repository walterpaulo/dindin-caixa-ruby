json.extract! pedido_produdo, :id, :pedido, :produto_id, :valor, :created_at, :updated_at
json.url pedido_produdo_url(pedido_produdo, format: :json)
