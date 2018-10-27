class CreatePropertyStreetLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :property_street_locations do |t|
      t.references :properties, foreign_key: true
      t.references :street_locations, foreign_key: true

      t.timestamps
    end
  end
end
