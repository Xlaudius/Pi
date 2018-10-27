class CreatePropertyStairs < ActiveRecord::Migration[5.2]
  def change
    create_table :property_stairs do |t|
      t.references :properties, foreign_key: true
      t.references :stairs, foreign_key: true

      t.timestamps
    end
  end
end
