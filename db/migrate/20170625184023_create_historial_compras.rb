class CreateHistorialCompras < ActiveRecord::Migration[5.0]
  def change
    create_table :historial_compras do |t|
      t.integer :compra_id
      t.integer :producto_id
      t.integer :usuario_id
      t.integer :cantidad
      t.integer :total

      t.timestamps
    end
  end
end
