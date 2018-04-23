class Section < ApplicationRecord
  belongs_to :trip
  belongs_to :origin, class_name: 'City', optional: true
  belongs_to :destination, class_name: 'City', optional: true
end
