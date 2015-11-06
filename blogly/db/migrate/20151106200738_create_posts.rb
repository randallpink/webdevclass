class CreatePosts < ActiveRecord::Migration
  def change
  	 drop_table :posts
  	 
    create_table :posts do |t|
      t.string :name
      t.string :slug
      t.text :content
      t.string :featured_image

      t.timestamps null: false
    end
  end
end
