class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
