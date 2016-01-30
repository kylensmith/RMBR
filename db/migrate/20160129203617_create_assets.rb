class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    	t.integer :user_id
    	t.integer :event_id
    	t.text :description
    	t.string :media_name

      t.timestamps null: false
    end
  end
end
