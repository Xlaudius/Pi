class CreatePropertyDrinkingWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :property_drinking_waters do |t|
      t.references :drinking_waters, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
