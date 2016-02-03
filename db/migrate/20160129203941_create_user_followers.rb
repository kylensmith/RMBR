class CreateUserFollowers < ActiveRecord::Migration
  def change
    create_table :user_followers do |t|
    	t.integer :user_id
    	t.integer :user_being_followed_id
    	t.integer :follow_status

      t.timestamps null: false
    end
  end
end
