class AddRatingToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :rating, :float
  end
end
