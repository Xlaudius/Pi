class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.float :debt_taxation
      t.integer :antiquity
      t.boolean :expropriation
      t.boolean :sill
      t.references :assessments, foreign_key: true
      t.boolean :facilities

      t.timestamps
    end
  end
end
