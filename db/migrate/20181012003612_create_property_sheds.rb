class CreatePropertySheds < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sheds do |t|
      t.references :sheds, foreign_key: true
      t.references :properties, foreign_key: true
      t.references :shed_materials, foreign_key: true

      t.timestamps
    end
  end
end
