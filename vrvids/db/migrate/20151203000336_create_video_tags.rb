class CreateVideoTags < ActiveRecord::Migration
  def change
    create_table :video_tags do |t|
      t.integer :video_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
