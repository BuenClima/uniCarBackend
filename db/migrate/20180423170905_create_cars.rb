class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.date :registratio
      t.string :brand
      t.string :model
      t.string :year
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
