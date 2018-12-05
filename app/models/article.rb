class Article < ApplicationRecord
   has_many :replies, dependent: :destroy
   validates :title, presence: true, length: { minimum: 5, maximum: 30}
   validates :text, presence: true, length: { minimum: 10 }
   validates :category, presence: true
   has_attached_file :image, styles: {large: "600x600>", medium: "300x 300>", thumb: "150x150#"}
   validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
   CATEGORIES = ['Student life' , 'Courses','New student','Future 49ers','Application Process']
end