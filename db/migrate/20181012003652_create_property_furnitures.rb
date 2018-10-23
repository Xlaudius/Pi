class CreatePropertyFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :property_furnitures do |t|
      t.references :furnitures, foreign_key: true
      t.references :properties, foreign_key: true
      t.references :furniture_covers, foreign_key: true

      t.timestamps
    end
  end
end
