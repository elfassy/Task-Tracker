class RemoveFirstLastAddName < ActiveRecord::Migration
  def up
  	remove_column :events, :first_name
  	remove_column :events, :last_name
  	add_column :events, :name, :string
  end

  def down
  end
end
