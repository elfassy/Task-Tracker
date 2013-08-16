class CreateAdminViews < ActiveRecord::Migration
  def change
    create_table :admin_views do |t|

      t.timestamps
    end
  end
end
