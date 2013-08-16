class RemoveVerifyAddAdminComplete < ActiveRecord::Migration
  def up
  	remove_column(:complete_events, :verify)
  	add_column(:complete_events, :admin_verify, :boolean)
  end

  def down
  end
end
