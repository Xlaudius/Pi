class CreateServiceYards < ActiveRecord::Migration[5.2]
  def change
    create_table :service_yards do |t|
      t.string :img
      t.float :mts2
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
