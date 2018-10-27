class CreatePropertyEnlarQuality < ActiveRecord::Migration[5.2]
  def change
    create_table :property_enlar_qualities do |t|
      t.references :enlargements_qualities, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
