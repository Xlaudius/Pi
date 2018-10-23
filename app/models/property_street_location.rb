class PropertyStreetLocation < ApplicationRecord
  belongs_to :property
  belongs_to :streetLocation
end
