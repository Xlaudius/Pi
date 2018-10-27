class CreatePropertyDoors < ActiveRecord::Migration[5.2]
  def change
    create_table :property_doors do |t|
      t.references :doors, foreign_key: true
      t.references :door_frames, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
