class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_name
    	t.string :event_location
    	t.string :event_city
    	t.string :event_state
    	t.text :event_description
    	t.date :event_start_date
    	t.date :event_end_date
    	t.string :logo
    	t.integer :event_status

      t.timestamps null: false
    end
  end
end
