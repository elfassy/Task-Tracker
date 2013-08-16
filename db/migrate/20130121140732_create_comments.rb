class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :event_id
      t.string :comment

      t.timestamps
    end
    add_index :comments, :event_id
  end
end
