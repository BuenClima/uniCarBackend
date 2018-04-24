class Car < ApplicationRecord
  belongs_to :user
  has_many :trips
  validates :registratio,
            :brand,
            :model,
            :seats,
            :year,
            presence: true
end
