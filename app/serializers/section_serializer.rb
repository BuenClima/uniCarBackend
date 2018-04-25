class SectionSerializer < ActiveModel::Serializer
  attributes :id, :trip, :city_origin_id, :city_destination_id
end
