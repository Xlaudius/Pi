class CreatePropertyHousingQualities < ActiveRecord::Migration[5.2]
  def change
    create_table :property_housing_qualities do |t|
      t.references :housing_qualities, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
