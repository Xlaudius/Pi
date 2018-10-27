class RemoveRelationOnPropertyShed < ActiveRecord::Migration[5.2]
  def change
    remove_reference :property_sheds, :shed_section, foreign_key: true

  end
end
