class AddOriginDestinationToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :city_origin_id, :integer
    add_column :sections, :city_destination_id, :integer
  end
end
