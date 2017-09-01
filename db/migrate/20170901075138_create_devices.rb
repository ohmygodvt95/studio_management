class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :user_id
      t.integer :type_device, default: 0
      t.integer :price, default: 0
      t.string :avatar, null: true
      t.timestamps
    end
  end
end
