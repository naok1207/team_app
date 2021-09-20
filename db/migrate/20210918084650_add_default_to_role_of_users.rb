class AddDefaultToRoleOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :role, false, 1
    change_column_default :users, :role, from: nil, to: 1
  end
end
