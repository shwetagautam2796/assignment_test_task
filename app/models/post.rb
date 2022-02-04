class Post < ApplicationRecord
  has_many_attached :images
  
  belongs_to :user
  has_many :comments

  validates :title, :description, presence: true
end
