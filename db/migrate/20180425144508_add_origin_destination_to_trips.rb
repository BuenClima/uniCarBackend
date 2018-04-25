class AddOriginDestinationToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :city_origin_id, :integer
    add_column :trips, :city_destination_id, :integer
  end
end
