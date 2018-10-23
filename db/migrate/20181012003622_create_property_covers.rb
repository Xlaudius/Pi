class CreatePropertyCovers < ActiveRecord::Migration[5.2]
  def change
    create_table :property_covers do |t|
      t.text :observations
      t.references :properties, foreign_key: true
      t.references :covers, foreign_key: true

      t.timestamps
    end
  end
end
