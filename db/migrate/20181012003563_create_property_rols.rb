class CreatePropertyRols < ActiveRecord::Migration[5.2]
  def change
    create_table :property_rols do |t|
      t.integer :block
      t.integer :predial
      t.references :provinces, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
