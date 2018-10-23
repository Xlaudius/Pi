class CreatePropertyToiletArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :property_toilet_artifacts do |t|
      t.references :properties, foreign_key: true
      t.references :toilet_artifacts, foreign_key: true
      t.references :qualities, foreign_key: true

      t.timestamps
    end
  end
end
