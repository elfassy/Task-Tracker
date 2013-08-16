class AddDeadlineEvent < ActiveRecord::Migration
  def up
  	add_column :events, :deadline, :date
  end

  def down
  end
end
