class AddValidatedToHistorialCompras < ActiveRecord::Migration[5.0]
  def change
    add_column :historial_compras, :validated, :boolean, default: false
  end
end
