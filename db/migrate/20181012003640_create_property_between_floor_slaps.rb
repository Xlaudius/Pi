class CreatePropertyBetweenFloorSlaps < ActiveRecord::Migration[5.2]
  def change
    create_table :property_between_floor_slaps do |t|
      t.references :between_floor_slaps, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
