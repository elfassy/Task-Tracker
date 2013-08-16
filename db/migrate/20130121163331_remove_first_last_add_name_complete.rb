class RemoveFirstLastAddNameComplete < ActiveRecord::Migration
  def up
  	remove_column :complete_events, :first_name
  	remove_column :complete_events, :last_name
  	add_column :complete_events, :name, :string
  end

  def down
  end
end
