class RemoveFirstLastAddNameAdmin < ActiveRecord::Migration
  def up
  	remove_column :admin_verifieds, :first_name
  	remove_column :admin_verifieds, :last_name
  	add_column :admin_verifieds, :name, :string
  end

  def down
  end
end
