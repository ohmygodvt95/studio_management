class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.integer :user_id
      t.integer :contract_id
      t.datetime :time, default: -> {"CURRENT_TIMESTAMP"}
      t.float :working_time, default: 0
      t.timestamps
    end
  end
end
