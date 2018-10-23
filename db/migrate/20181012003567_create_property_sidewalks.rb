class CreatePropertySidewalks < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sidewalks do |t|
      t.references :sidewalks, foreign_key: true
      t.references :properties, foreign_key: true
      t.float :width

      t.timestamps
    end
  end
end
