class CreatePropertySewerages < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sewerages do |t|
      t.references :sewerages, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
