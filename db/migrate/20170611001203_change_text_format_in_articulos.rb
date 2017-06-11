class ChangeTextFormatInArticulos < ActiveRecord::Migration[5.0]
  def change
    change_column :articulos, :descripcion, :text
  end
end
