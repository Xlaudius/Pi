class CreatePropertyPavements < ActiveRecord::Migration[5.2]
  def change
    create_table :property_pavements do |t|
      t.references :pavements, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
