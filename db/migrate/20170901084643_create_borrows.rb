class CreateBorrows < ActiveRecord::Migration[5.1]
  def change
    create_table :borrows do |t|
      t.integer :device_id
      t.integer :contract_id
      t.float :working_time, fefault: 0
      t.datetime :time, default: -> {"CURRENT_TIMESTAMP"}
      t.timestamps
    end
  end
end
