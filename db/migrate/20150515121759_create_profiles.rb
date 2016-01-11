class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name, :null => false
      t.string :surname
      t.string :phone, :unique => true
      t.timestamps null: false
    end
  end
end
