class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :profile_id
    	t.string :email_contact
    	t.date :birthday
    	t.string :password
    	t.string :avatar

      t.timestamps null: false
    end
  end
end
