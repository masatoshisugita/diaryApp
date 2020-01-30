class User < ApplicationRecord
  has_many :diaries
  
  has_secure_password
end
