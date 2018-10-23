class CreatePropertyRoofings < ActiveRecord::Migration[5.2]
  def change
    create_table :property_roofings do |t|
      t.references :properties, foreign_key: true
      t.references :roofings, foreign_key: true

      t.timestamps
    end
  end
end
