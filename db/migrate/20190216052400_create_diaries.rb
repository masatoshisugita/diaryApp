class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.datetime :date
      t.integer :weight
      t.string :comment

      t.timestamps
    end
  end
end
