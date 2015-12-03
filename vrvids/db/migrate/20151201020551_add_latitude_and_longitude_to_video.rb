class AddLatitudeAndLongitudeToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :latitude, :float
    add_column :videos, :longitude, :float
  end
end
