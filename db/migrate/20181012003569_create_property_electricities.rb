class CreatePropertyElectricities < ActiveRecord::Migration[5.2]
  def change
    create_table :property_electricities do |t|
      t.references :electricities, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
