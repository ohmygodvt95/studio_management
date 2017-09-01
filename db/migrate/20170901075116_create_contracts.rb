class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :code, null: true
      t.integer :type_contract, default: 0
      t.string :name
      t.integer :customer_id
      t.datetime :begin_at
      t.datetime :end_at
      t.integer :status, default: 0
      t.integer :price, default: 0
      t.integer :user_id
      t.integer :package, default: 0
      t.timestamps
    end
  end
end
