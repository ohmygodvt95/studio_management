class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :email, null: true
      t.string :description, null: true
      t.string :address, null: true
      t.timestamps
    end
  end
end
