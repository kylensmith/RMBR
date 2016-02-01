class CreateFlashes < ActiveRecord::Migration
  def change
    create_table :flashes do |t|
    	t.integer :asset_id
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
