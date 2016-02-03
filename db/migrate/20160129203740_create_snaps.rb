class CreateSnaps < ActiveRecord::Migration
  def change
    create_table :snaps do |t|
    	t.integer :picture_id
    	t.integer :user_id
    	t.integer :snap_status


      t.timestamps null: false
    end
  end
end
