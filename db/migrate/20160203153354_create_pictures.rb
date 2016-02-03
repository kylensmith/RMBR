class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.text :description
    	t.string :picture_file


      t.timestamps null: false
    end
  end
end
