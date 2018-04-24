class Trip < ApplicationRecord
  belongs_to :car
  has_many :sections
  has_many :passengers
  validates :arrival_time,
            :departure_time,
            presence: true
end
