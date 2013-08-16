class CreateCallLogs < ActiveRecord::Migration
  def change
    create_table :call_logs do |t|
      t.date :date
      t.integer :number
      t.time :time
      t.string :extension
      t.string :employee
      t.string :state
      t.timestamps
    end
  end
end
