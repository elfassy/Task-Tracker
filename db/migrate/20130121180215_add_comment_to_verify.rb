class AddCommentToVerify < ActiveRecord::Migration
  def change
  	add_column :admin_verifieds, :comment, :string
  end
end
