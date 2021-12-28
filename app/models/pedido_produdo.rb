class PedidoProdudo < ApplicationRecord
  belongs_to :produto
  belongs_to :pedido
end
