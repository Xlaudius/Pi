class CreatePropertyExteriorClosures < ActiveRecord::Migration[5.2]
  def change
    create_table :property_exterior_closures do |t|
      t.string :other
      t.references :properties, foreign_key: true
      t.references :exterior_closures, foreign_key: true

      t.timestamps
    end
  end
end
