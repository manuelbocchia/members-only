class Post < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :title, length: { minimum: 5 }
    

    validates :content, presence: true
    validates :content, length: { minimum: 5 }
end
