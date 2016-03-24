class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integere
  end
end
