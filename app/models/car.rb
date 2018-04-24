require 'carrierwave/orm/activerecord'
class Car < ApplicationRecord
  belongs_to :user
  has_many :trips
  validates :registratio,
            :brand,
            :model,
            :seats,
            :year,
            presence: true
  mount_uploader :image, CarPictureUploader
end
