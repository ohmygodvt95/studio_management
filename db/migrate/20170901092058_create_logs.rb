class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.integer :amount, default: 0
      t.string :content
      t.string :note, null: true
      t.integer :type_log, default: 0
      t.integer :contract_id, null: true
      t.timestamps
    end
  end
end
