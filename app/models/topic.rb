class Topic < ApplicationRecord
    has_many :replies
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :content, presence: true, length: { minimum: 10 }
end
