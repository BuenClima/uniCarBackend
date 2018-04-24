class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :user, :trip
end
