class EditAdminVerifyDefaultFalse < ActiveRecord::Migration
  def up
  	remove_column(:complete_events, :admin_verify)
  	add_column(:complete_events, :admin_verify, :boolean, :default => false)
  end

  def down
  end
end
