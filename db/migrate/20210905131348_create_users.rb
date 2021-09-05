class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :name
      t.string :nickname
      t.string :email
      t.string :password
      t.boolean :activated
      t.integer :role
      t.text :introduce
      t.string :avatar

      t.timestamps
    end
  end
end
