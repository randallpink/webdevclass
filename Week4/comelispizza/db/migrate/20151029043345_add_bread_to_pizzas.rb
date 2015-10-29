class AddBreadToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :bread_id, :integer
  end
end
