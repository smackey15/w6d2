class MoreUserChanges2 < ActiveRecord::Migration[5.2]
  def change
       add_column :users, :username, :text, null: false
        add_index :users,:username, unique: true
  end
end
