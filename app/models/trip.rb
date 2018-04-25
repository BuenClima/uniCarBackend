class Trip < ApplicationRecord
  belongs_to :car
  has_many :sections
  has_many :passengers
  belongs_to :city_origin_id, class_name: 'City', :foreign_key => 'city_origin_id'
  belongs_to :city_destination_id, class_name: 'City', :foreign_key => 'city_destination_id'
  validates :arrival_time,
            :departure_time,
            presence: true
end
