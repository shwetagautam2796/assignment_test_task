class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar_url
  
  has_many :posts, dependent: :destroy
  validates :city, :state, :country, :gender, presence: true
  validates :phone, numericality: { only_integer: true }, length: { in: 0..10 }
end
