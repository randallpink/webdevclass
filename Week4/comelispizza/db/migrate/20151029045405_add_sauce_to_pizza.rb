class AddSauceToPizza < ActiveRecord::Migration
  def change
    add_column :pizzas, :sauce_id, :integer
  end
end
