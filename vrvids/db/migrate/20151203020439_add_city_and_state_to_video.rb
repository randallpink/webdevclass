class AddCityAndStateToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :city, :string
    add_column :videos, :state, :string
  end
end
