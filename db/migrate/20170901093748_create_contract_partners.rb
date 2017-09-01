class CreateContractPartners < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_partners do |t|
      t.integer :contract_id
      t.integer :partner_id
      t.timestamps
    end
  end
end
