class ModifyUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users,:name
    add_column :users, :username, :text, null: false
    add_index :users,:username, unique: true

    remove_column :users, :email
  end
end
