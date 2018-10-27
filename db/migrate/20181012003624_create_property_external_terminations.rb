class CreatePropertyExternalTerminations < ActiveRecord::Migration[5.2]
  def change
    create_table :property_extern_terminations do |t|
      t.references :properties, foreign_key: true
      t.references :external_terminations, foreign_key: true

      t.timestamps
    end
  end
end
