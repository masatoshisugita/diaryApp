class RemoveDateFromDiary < ActiveRecord::Migration[5.2]
  def change
    remove_column :diaries, :date, :datetime
  end
end
