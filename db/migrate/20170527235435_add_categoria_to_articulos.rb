class AddCategoriaToArticulos < ActiveRecord::Migration[5.0]
  def change
    add_column :articulos, :categoria, :string
  end
end
