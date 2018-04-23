class TripSerializer < ActiveModel::Serializer
  attributes :id, :departure_time, :arrival_time, :car
end
