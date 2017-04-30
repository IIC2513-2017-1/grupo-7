class CreateArticulos < ActiveRecord::Migration[5.0]
  def change
    create_table :articulos do |t|
      t.string :name
      t.integer :user_id
      t.integer :stock
      t.integer :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
