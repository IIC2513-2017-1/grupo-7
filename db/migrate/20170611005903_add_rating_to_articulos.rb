class AddRatingToArticulos < ActiveRecord::Migration[5.0]
  def change
    add_column :articulos, :rating, :float, default: 0
  end
end
