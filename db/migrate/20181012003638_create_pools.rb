class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.string :img
      t.float :volumen
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
