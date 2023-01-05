class User < ApplicationRecord
    has_many :posts

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 5 }
    
    validates :email, presence: true
    validates :email, length: { minimum: 5 }

    has_secure_password
end
