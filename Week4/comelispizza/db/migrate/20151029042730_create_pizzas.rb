class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :photo

      t.timestamps null: false
    end
  end
end
