class RemoveRatingsGromArticulos < ActiveRecord::Migration[5.0]
  def change
    remove_column :articulos, :rating
  end
end
