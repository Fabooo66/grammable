class Gram < ApplicationRecord

  mount_uploader :image, PictureUploader
  validates :message, presence: true
  validates :image, presence: true
  validates :user, presence: true
  
  belongs_to :user
  has_many :comments
end
