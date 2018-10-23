class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.references :states, foreign_key: true
      t.string :location
      t.boolean :inhabited
      t.string :habitant
      t.references :clients, foreign_key: true
      t.references :owners, foreign_key: true

      t.timestamps
    end
  end
end
