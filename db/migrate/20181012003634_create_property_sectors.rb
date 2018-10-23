class CreatePropertySectors < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sectors do |t|
      t.float :distancia
      t.references :properties, foreign_key: true
      t.references :sectors, foreign_key: true

      t.timestamps
    end
  end
end
