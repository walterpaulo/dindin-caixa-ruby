json.extract! pedido, :id, :cliente_id, :valor, :valor_total, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
