class AddUserIdToCorks < ActiveRecord::Migration
  def change
    add_column :corks, :user_id, :integer
    add_index :corks, :user_id
  end
end
