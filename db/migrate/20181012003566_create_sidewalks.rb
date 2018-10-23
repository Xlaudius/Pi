class CreateSidewalks < ActiveRecord::Migration[5.2]
  def change
    create_table :sidewalks do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
