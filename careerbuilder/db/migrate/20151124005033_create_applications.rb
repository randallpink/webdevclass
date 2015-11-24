class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :email
      t.integer :job_id
      t.text :resume
      t.string :firstname
      t.string :lastname
      t.text :coverletter
      t.boolean :opt_in, default: true, null: false
      t.string :street_address

      t.timestamps null: false
    end
  end
end
