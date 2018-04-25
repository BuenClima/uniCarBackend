class TripSerializer < ActiveModel::Serializer
  attributes :id, :departure_time, :arrival_time, :car, :city_origin_id, :city_destination_id
end
