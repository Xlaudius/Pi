class Province < ApplicationRecord
  belongs_to :city
  has_many :property_rols

end
