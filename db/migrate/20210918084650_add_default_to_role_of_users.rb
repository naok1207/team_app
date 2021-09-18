class AddDefaultToRoleOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :role, false, 0
    change_column_default :users, :role, from: nil, to: 0
  end
end
