class AddUserIdToDiary < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :user_id, :integer
  end
end
