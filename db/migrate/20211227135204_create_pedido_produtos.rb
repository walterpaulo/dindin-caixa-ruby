class CreatePedidoProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedido_produtos do |t|
      t.references :pedido, foreign_key: true
      t.references :produto, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end
