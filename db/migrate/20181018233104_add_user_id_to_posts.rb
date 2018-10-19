class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :done_homework, :boolean
  end
end
