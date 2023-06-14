class AddUserIdIndexToArticles < ActiveRecord::Migration[7.0]
  def change
    add_index :articles, :user_id
    #Ex:- add_index("admin_users", "username")
  end
end
