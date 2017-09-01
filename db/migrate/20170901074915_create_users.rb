class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :role, default: 1
      t.string :name
      t.string :avatar, null: true
      t.integer :level, defaulr: 0
      t.string :phone, null: true
      t.string :address, null: true
      t.timestamps
    end
  end
end
