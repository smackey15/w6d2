class MoreUserChanges3 < ActiveRecord::Migration[5.2]
  def change
    rename_column :users,:username, :user
  end
end
