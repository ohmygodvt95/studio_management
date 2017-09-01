class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :description, null: true
      t.string :phone, null: true
      t.string :email, null: true
      t.string :address, null: true
      t.timestamps
    end
  end
end
