class CreatePropertyWaterRainDucts < ActiveRecord::Migration[5.2]
  def change
    create_table :property_water_rain_ducts do |t|
      t.references :properties, foreign_key: true
      t.references :water_rain_ducts, foreign_key: true

      t.timestamps
    end
  end
end
