class SectionSerializer < ActiveModel::Serializer
  attributes :id, :trip, :origin, :destination
end
