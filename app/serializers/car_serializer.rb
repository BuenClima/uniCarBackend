class CarSerializer < ActiveModel::Serializer
  attributes :id, :registratio, :brand, :model, :year, :image
end
