class AddImageToArticulos < ActiveRecord::Migration[5.0]
  def change
    add_column :articulos, :image, :string
  end
end
