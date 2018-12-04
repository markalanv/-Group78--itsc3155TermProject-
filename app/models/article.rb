class Article < ApplicationRecord
    has_many :replies, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
     validates :category, presence: true
    CATEGORIES = ['student life' , 'courses']
end
