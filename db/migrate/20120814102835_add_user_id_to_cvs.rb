class AddUserIdToCvs < ActiveRecord::Migration
  def change
    add_column :cvs, :user_id, :integer
  end
end
