class AddDepartureArrivalTimeCarToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :departure_time, :datetime
    add_column :trips, :arrival_time, :datetime
    add_reference :trips, :car, foreign_key: true
  end
end
