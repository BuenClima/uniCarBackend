class Trip < ApplicationRecord
  belongs_to :car
  has_many :sections
end
