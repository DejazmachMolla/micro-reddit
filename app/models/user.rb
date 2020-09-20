class User < ApplicationRecord
   has_many :posts, dependent: :destroy
   has_many :comments, dependent: :destroy
   validates :username, :email, :password, presence: true
   validates :username, length: { minimum: 4, maximum: 12 }
   validates :password, length: { minimum: 6, maximum: 16 }
   validates :username, :email, uniqueness: true
end
