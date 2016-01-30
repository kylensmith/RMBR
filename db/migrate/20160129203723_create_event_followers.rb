class CreateEventFollowers < ActiveRecord::Migration
  def change
    create_table :event_followers do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.integer :follow_status

      t.timestamps null: false
    end
  end
end
