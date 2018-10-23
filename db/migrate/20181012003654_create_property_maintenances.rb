class CreatePropertyMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :property_maintenances do |t|
      t.references :maintenances, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
