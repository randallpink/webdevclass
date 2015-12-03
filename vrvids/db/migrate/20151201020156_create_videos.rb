class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link_url
      t.integer :user_id
      t.integer :category_id
      t.text :description

      t.timestamps null: false
    end
  end
end
