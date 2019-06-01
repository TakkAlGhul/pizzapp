class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :reviews
  mount_uploader :avatar, ImageUploader
  validates :name, presence: true
  validates :password, length: { minimum: 8 },allow_nil: true
  validates :avatar, presence: true
end
