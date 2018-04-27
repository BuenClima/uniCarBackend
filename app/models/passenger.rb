class Passenger < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  scope :my_trips, -> (user_id) { joins(:trip).where(user: user_id).order('departure_time ASC') }
end
