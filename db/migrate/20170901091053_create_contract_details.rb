class CreateContractDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_details do |t|
      t.integer :contract_id
      t.integer :user_id
      t.integer :type_detail, default: 0
      t.integer :bonus, default: 0
      t.timestamps
    end
  end
end
