class AddCommentToAdmin < ActiveRecord::Migration
  def change
  	add_column :complete_events, :comment, :string
  end
end
