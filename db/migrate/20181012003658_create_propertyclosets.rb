class CreatePropertyclosets < ActiveRecord::Migration[5.2]
  def change
    create_table :propertyclosets do |t|
      t.references :closets, foreign_key: true
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
