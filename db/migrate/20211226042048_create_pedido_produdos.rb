class CreatePedidoProdudos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedido_produdos do |t|
      t.references :pedido
      t.references :produto, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end
