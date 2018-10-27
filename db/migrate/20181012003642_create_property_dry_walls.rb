class CreatePropertyDryWalls < ActiveRecord::Migration[5.2]
  def change
    create_table :property_dry_walls do |t|
      t.references :dry_walls, foreign_key: true
      t.references :properties, foreign_key: true
      t.string :other

      t.timestamps
    end
  end
end
