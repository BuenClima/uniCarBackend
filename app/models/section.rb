class Section < ApplicationRecord
  belongs_to :trip
  belongs_to :city_origin_id, class_name: 'City', foreign_key: 'city_origin_id'
  belongs_to :city_destination_id, class_name: 'City', foreign_key: 'city_destination_id'
end
