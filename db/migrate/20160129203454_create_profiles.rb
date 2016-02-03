class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :fname
    	t.string :lname
    	t.text :bio
    	t.string :hometown_city
    	t.string :hometown_state
    	t.string :current_city
    	t.string :current_state
    	t.date :date
      t.string :avatar

      t.timestamps null: false
    end
  end
end
