class CreateFlashes < ActiveRecord::Migration
  def change
    create_table :flashes do |t|
    	t.integer :picture_id
    	t.integer :user_id
    	t.integer :flash_status

      t.timestamps null: false
    end
  end
end
