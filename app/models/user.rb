class User < ApplicationRecord
   before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  
  mount_uploader :image, ImageUploader
  
  has_many :highlights, dependent: :destroy
  has_many :likes, dependent: :destroy
  # likeしたhighlightを複数持つ
  has_many :liked_highlights, through: :likes, source: :highlight
end