class Diary < ApplicationRecord
  validates :weight, {presence: true}

  belongs_to :user
end
