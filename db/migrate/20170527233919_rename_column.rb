class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :comentarios, :integer, :articulo_id
  end
end
