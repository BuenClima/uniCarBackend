class AddSeatsToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :seats, :integer
  end
end
