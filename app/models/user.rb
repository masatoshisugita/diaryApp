class User < ApplicationRecord
  validates :name, presence: true,length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false } #メールアドレスを大文字小文字を区別したバリデーション

  has_many :diaries, :dependent => :destroy

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
