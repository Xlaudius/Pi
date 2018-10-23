class AddRelationOnPropertyShed < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_sheds, :shed_section, foreign_key: true
  end
end
