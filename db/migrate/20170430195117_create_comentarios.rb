class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :user_id
      t.string :integer
      t.text :content

      t.timestamps
    end
  end
end
