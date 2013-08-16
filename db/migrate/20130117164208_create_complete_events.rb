class CreateCompleteEvents < ActiveRecord::Migration
  def change
    create_table :complete_events do |t|
	
	  t.string :initials, :limit => 3
	  t.string :first_name
	  t.string :last_name
	  t.string :event_name
	  t.string :event_description, :limit => 255
	  t.boolean :complete, :default => true

      t.timestamps
    end
  end
end
