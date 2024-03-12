class AddUserIdToPosts < ActiveRecord::Migration[7.1]
  def change
    # add user id into posts table
    add_column :posts, :user_id, :integer
  end
end
