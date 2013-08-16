class AddVerifyToArchive < ActiveRecord::Migration
  def change
  	add_column(:complete_events, :verify, :boolean)
  end
end
