class AddPriorityColumn < ActiveRecord::Migration
  def up
    add_column(:events, :priroty, :integer, :limit => 7)
  end

  def down
  end
end
