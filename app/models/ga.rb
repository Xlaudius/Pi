class Ga < ApplicationRecord
    has_many :property_gas
    has_many :properties, through: :property_gas
end
