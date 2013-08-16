class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
	  t.string :initials, :limit => 3
	  t.string :first_name
	  t.string :last_name
	  t.string :event_name
	  t.string :event_description, :limit => 255
	  t.boolean :complete, :default => false
	  t.timestamps
    end
  end
end
