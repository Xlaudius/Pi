Rails.application.routes.draw do
  get 'windows/index'
  get 'windows/show'
  get 'windows/new'
  get 'windows/edit'
  get 'windows/create'
  get 'windows/update'
  get 'windows/destroy'
  get 'water_rain_ducts/index'
  get 'water_rain_ducts/show'
  get 'water_rain_ducts/new'
  get 'water_rain_ducts/edit'
  get 'water_rain_ducts/create'
  get 'water_rain_ducts/update'
  get 'water_rain_ducts/destroy'
  get 'toilet_artifacts/index'
  get 'toilet_artifacts/show'
  get 'toilet_artifacts/new'
  get 'toilet_artifacts/edit'
  get 'toilet_artifacts/create'
  get 'toilet_artifacts/update'
  get 'toilet_artifacts/destroy'
  get 'structures/index'
  get 'structures/show'
  get 'structures/new'
  get 'structures/edit'
  get 'structures/create'
  get 'structures/update'
  get 'structures/destroy'
  get 'street_locations/index'
  get 'street_locations/show'
  get 'street_locations/new'
  get 'street_locations/edit'
  get 'street_locations/create'
  get 'street_locations/update'
  get 'street_locations/destroy'
  get 'states/index'
  get 'states/show'
  get 'states/new'
  get 'states/edit'
  get 'states/create'
  get 'states/update'
  get 'states/destroy'
  get 'stairs/index'
  get 'stairs/show'
  get 'stairs/new'
  get 'stairs/edit'
  get 'stairs/create'
  get 'stairs/update'
  get 'stairs/destroy'
  get 'sidewalks/index'
  get 'sidewalks/show'
  get 'sidewalks/new'
  get 'sidewalks/edit'
  get 'sidewalks/create'
  get 'sidewalks/update'
  get 'sidewalks/destroy'
  get 'sheds/index'
  get 'sheds/show'
  get 'sheds/new'
  get 'sheds/edit'
  get 'sheds/create'
  get 'sheds/update'
  get 'sheds/destroy'
  get 'shed_materials/index'
  get 'shed_materials/show'
  get 'shed_materials/new'
  get 'shed_materials/edit'
  get 'shed_materials/create'
  get 'shed_materials/update'
  get 'shed_materials/destroy'
  get 'sewerages/index'
  get 'sewerages/show'
  get 'sewerages/new'
  get 'sewerages/edit'
  get 'sewerages/create'
  get 'sewerages/update'
  get 'sewerages/destroy'
  get 'service_yards/index'
  get 'service_yards/show'
  get 'service_yards/new'
  get 'service_yards/edit'
  get 'service_yards/create'
  get 'service_yards/update'
  get 'service_yards/destroy'
  get 'sectors/index'
  get 'sectors/show'
  get 'sectors/new'
  get 'sectors/edit'
  get 'sectors/create'
  get 'sectors/update'
  get 'sectors/destroy'
  get 'sector_characteristics/index'
  get 'sector_characteristics/show'
  get 'sector_characteristics/new'
  get 'sector_characteristics/edit'
  get 'sector_characteristics/create'
  get 'sector_characteristics/update'
  get 'sector_characteristics/destroy'
  get 'roofings/index'
  get 'roofings/show'
  get 'roofings/new'
  get 'roofings/edit'
  get 'roofings/create'
  get 'roofings/update'
  get 'roofings/destroy'
  get 'roads/index'
  get 'roads/show'
  get 'roads/new'
  get 'roads/edit'
  get 'roads/create'
  get 'roads/update'
  get 'roads/destroy'
  get 'regions/index'
  get 'regions/show'
  get 'regions/new'
  get 'regions/edit'
  get 'regions/create'
  get 'regions/update'
  get 'regions/destroy'
  get 'qualities/index'
  get 'qualities/show'
  get 'qualities/new'
  get 'qualities/edit'
  get 'qualities/create'
  get 'qualities/update'
  get 'qualities/destroy'
  get 'provinces/index'
  get 'provinces/show'
  get 'provinces/new'
  get 'provinces/edit'
  get 'provinces/create'
  get 'provinces/update'
  get 'provinces/destroy'
  get 'propertyclosets/index'
  get 'propertyclosets/show'
  get 'propertyclosets/new'
  get 'propertyclosets/edit'
  get 'propertyclosets/create'
  get 'propertyclosets/update'
  get 'propertyclosets/destroy'
  get 'property_windows/index'
  get 'property_windows/show'
  get 'property_windows/new'
  get 'property_windows/edit'
  get 'property_windows/create'
  get 'property_windows/update'
  get 'property_windows/destroy'
  get 'property_water_rain_ducts/index'
  get 'property_water_rain_ducts/show'
  get 'property_water_rain_ducts/new'
  get 'property_water_rain_ducts/edit'
  get 'property_water_rain_ducts/create'
  get 'property_water_rain_ducts/update'
  get 'property_water_rain_ducts/destroy'
  get 'property_types/index'
  get 'property_types/show'
  get 'property_types/new'
  get 'property_types/edit'
  get 'property_types/create'
  get 'property_types/update'
  get 'property_types/destroy'
  get 'property_toilet_artifacts/index'
  get 'property_toilet_artifacts/show'
  get 'property_toilet_artifacts/new'
  get 'property_toilet_artifacts/edit'
  get 'property_toilet_artifacts/create'
  get 'property_toilet_artifacts/update'
  get 'property_toilet_artifacts/destroy'
  get 'property_structures/index'
  get 'property_structures/show'
  get 'property_structures/new'
  get 'property_structures/edit'
  get 'property_structures/create'
  get 'property_structures/update'
  get 'property_structures/destroy'
  get 'property_street_locations/index'
  get 'property_street_locations/show'
  get 'property_street_locations/new'
  get 'property_street_locations/edit'
  get 'property_street_locations/create'
  get 'property_street_locations/update'
  get 'property_street_locations/destroy'
  get 'property_stairs/index'
  get 'property_stairs/show'
  get 'property_stairs/new'
  get 'property_stairs/edit'
  get 'property_stairs/create'
  get 'property_stairs/update'
  get 'property_stairs/destroy'
  get 'property_sidewalks/index'
  get 'property_sidewalks/show'
  get 'property_sidewalks/new'
  get 'property_sidewalks/edit'
  get 'property_sidewalks/create'
  get 'property_sidewalks/update'
  get 'property_sidewalks/destroy'
  get 'property_sheds/index'
  get 'property_sheds/show'
  get 'property_sheds/new'
  get 'property_sheds/edit'
  get 'property_sheds/create'
  get 'property_sheds/update'
  get 'property_sheds/destroy'
  get 'property_sewerages/index'
  get 'property_sewerages/show'
  get 'property_sewerages/new'
  get 'property_sewerages/edit'
  get 'property_sewerages/create'
  get 'property_sewerages/update'
  get 'property_sewerages/destroy'
  get 'property_sectors/index'
  get 'property_sectors/show'
  get 'property_sectors/new'
  get 'property_sectors/edit'
  get 'property_sectors/create'
  get 'property_sectors/update'
  get 'property_sectors/destroy'
  get 'property_sec_characteristics/index'
  get 'property_sec_characteristics/show'
  get 'property_sec_characteristics/new'
  get 'property_sec_characteristics/edit'
  get 'property_sec_characteristics/create'
  get 'property_sec_characteristics/update'
  get 'property_sec_characteristics/destroy'
  get 'property_roofings/index'
  get 'property_roofings/show'
  get 'property_roofings/new'
  get 'property_roofings/edit'
  get 'property_roofings/create'
  get 'property_roofings/update'
  get 'property_roofings/destroy'
  get 'property_rols/index'
  get 'property_rols/show'
  get 'property_rols/new'
  get 'property_rols/edit'
  get 'property_rols/create'
  get 'property_rols/update'
  get 'property_rols/destroy'
  get 'property_roads/index'
  get 'property_roads/show'
  get 'property_roads/new'
  get 'property_roads/edit'
  get 'property_roads/create'
  get 'property_roads/update'
  get 'property_roads/destroy'
  get 'property_property_types/index'
  get 'property_property_types/show'
  get 'property_property_types/new'
  get 'property_property_types/edit'
  get 'property_property_types/create'
  get 'property_property_types/update'
  get 'property_property_types/destroy'
  get 'property_pavements/index'
  get 'property_pavements/show'
  get 'property_pavements/new'
  get 'property_pavements/edit'
  get 'property_pavements/create'
  get 'property_pavements/update'
  get 'property_pavements/destroy'
  get 'property_maintenances/index'
  get 'property_maintenances/show'
  get 'property_maintenances/new'
  get 'property_maintenances/edit'
  get 'property_maintenances/create'
  get 'property_maintenances/update'
  get 'property_maintenances/destroy'
  get 'property_land_shapes/index'
  get 'property_land_shapes/show'
  get 'property_land_shapes/new'
  get 'property_land_shapes/edit'
  get 'property_land_shapes/create'
  get 'property_land_shapes/update'
  get 'property_land_shapes/destroy'
  get 'property_interior_closures/index'
  get 'property_interior_closures/show'
  get 'property_interior_closures/new'
  get 'property_interior_closures/edit'
  get 'property_interior_closures/create'
  get 'property_interior_closures/update'
  get 'property_interior_closures/destroy'
  get 'property_housing_qualities/index'
  get 'property_housing_qualities/show'
  get 'property_housing_qualities/new'
  get 'property_housing_qualities/edit'
  get 'property_housing_qualities/create'
  get 'property_housing_qualities/update'
  get 'property_housing_qualities/destroy'
  get 'property_heatings/index'
  get 'property_heatings/show'
  get 'property_heatings/new'
  get 'property_heatings/edit'
  get 'property_heatings/create'
  get 'property_heatings/update'
  get 'property_heatings/destroy'
  get 'property_gas/index'
  get 'property_gas/show'
  get 'property_gas/new'
  get 'property_gas/edit'
  get 'property_gas/create'
  get 'property_gas/update'
  get 'property_gas/destroy'
  get 'property_furnitures/index'
  get 'property_furnitures/show'
  get 'property_furnitures/new'
  get 'property_furnitures/edit'
  get 'property_furnitures/create'
  get 'property_furnitures/update'
  get 'property_furnitures/destroy'
  get 'property_extern_terminations/index'
  get 'property_extern_terminations/show'
  get 'property_extern_terminations/new'
  get 'property_extern_terminations/edit'
  get 'property_extern_terminations/create'
  get 'property_extern_terminations/update'
  get 'property_extern_terminations/destroy'
  get 'property_exterior_closures/index'
  get 'property_exterior_closures/show'
  get 'property_exterior_closures/new'
  get 'property_exterior_closures/edit'
  get 'property_exterior_closures/create'
  get 'property_exterior_closures/update'
  get 'property_exterior_closures/destroy'
  get 'property_enlar_qualities/index'
  get 'property_enlar_qualities/show'
  get 'property_enlar_qualities/new'
  get 'property_enlar_qualities/edit'
  get 'property_enlar_qualities/create'
  get 'property_enlar_qualities/update'
  get 'property_enlar_qualities/destroy'
  get 'property_electricities/index'
  get 'property_electricities/show'
  get 'property_electricities/new'
  get 'property_electricities/edit'
  get 'property_electricities/create'
  get 'property_electricities/update'
  get 'property_electricities/destroy'
  get 'property_dry_walls/index'
  get 'property_dry_walls/show'
  get 'property_dry_walls/new'
  get 'property_dry_walls/edit'
  get 'property_dry_walls/create'
  get 'property_dry_walls/update'
  get 'property_dry_walls/destroy'
  get 'property_drinking_waters/index'
  get 'property_drinking_waters/show'
  get 'property_drinking_waters/new'
  get 'property_drinking_waters/edit'
  get 'property_drinking_waters/create'
  get 'property_drinking_waters/update'
  get 'property_drinking_waters/destroy'
  get 'property_doors/index'
  get 'property_doors/show'
  get 'property_doors/new'
  get 'property_doors/edit'
  get 'property_doors/create'
  get 'property_doors/update'
  get 'property_doors/destroy'
  get 'property_covers/index'
  get 'property_covers/show'
  get 'property_covers/new'
  get 'property_covers/edit'
  get 'property_covers/create'
  get 'property_covers/update'
  get 'property_covers/destroy'
  get 'property_between_floor_slaps/index'
  get 'property_between_floor_slaps/show'
  get 'property_between_floor_slaps/new'
  get 'property_between_floor_slaps/edit'
  get 'property_between_floor_slaps/create'
  get 'property_between_floor_slaps/update'
  get 'property_between_floor_slaps/destroy'
  get 'properties/index'
  get 'properties/show'
  get 'properties/new'
  get 'properties/edit'
  get 'properties/create'
  get 'properties/update'
  get 'properties/destroy'
  get 'pools/index'
  get 'pools/show'
  get 'pools/new'
  get 'pools/edit'
  get 'pools/create'
  get 'pools/update'
  get 'pools/destroy'
  get 'pavements/index'
  get 'pavements/show'
  get 'pavements/new'
  get 'pavements/edit'
  get 'pavements/create'
  get 'pavements/update'
  get 'pavements/destroy'
  get 'owners/index'
  get 'owners/show'
  get 'owners/new'
  get 'owners/edit'
  get 'owners/create'
  get 'owners/update'
  get 'owners/destroy'
  get 'maintenances/index'
  get 'maintenances/show'
  get 'maintenances/new'
  get 'maintenances/edit'
  get 'maintenances/create'
  get 'maintenances/update'
  get 'maintenances/destroy'
  get 'land_shapes/index'
  get 'land_shapes/show'
  get 'land_shapes/new'
  get 'land_shapes/edit'
  get 'land_shapes/create'
  get 'land_shapes/update'
  get 'land_shapes/destroy'
  get 'interior_closures/index'
  get 'interior_closures/show'
  get 'interior_closures/new'
  get 'interior_closures/edit'
  get 'interior_closures/create'
  get 'interior_closures/update'
  get 'interior_closures/destroy'
  get 'housing_qualities/index'
  get 'housing_qualities/show'
  get 'housing_qualities/new'
  get 'housing_qualities/edit'
  get 'housing_qualities/create'
  get 'housing_qualities/update'
  get 'housing_qualities/destroy'
  get 'heatings/index'
  get 'heatings/show'
  get 'heatings/new'
  get 'heatings/edit'
  get 'heatings/create'
  get 'heatings/update'
  get 'heatings/destroy'
  get 'gas/index'
  get 'gas/show'
  get 'gas/new'
  get 'gas/edit'
  get 'gas/create'
  get 'gas/update'
  get 'gas/destroy'
  get 'furnitures/index'
  get 'furnitures/show'
  get 'furnitures/new'
  get 'furnitures/edit'
  get 'furnitures/create'
  get 'furnitures/update'
  get 'furnitures/destroy'
  get 'furniture_covers/index'
  get 'furniture_covers/show'
  get 'furniture_covers/new'
  get 'furniture_covers/edit'
  get 'furniture_covers/create'
  get 'furniture_covers/update'
  get 'furniture_covers/destroy'
  get 'external_terminations/index'
  get 'external_terminations/show'
  get 'external_terminations/new'
  get 'external_terminations/edit'
  get 'external_terminations/create'
  get 'external_terminations/update'
  get 'external_terminations/destroy'
  get 'exterior_closures/index'
  get 'exterior_closures/show'
  get 'exterior_closures/new'
  get 'exterior_closures/edit'
  get 'exterior_closures/create'
  get 'exterior_closures/update'
  get 'exterior_closures/destroy'
  get 'enlargements_qualities/index'
  get 'enlargements_qualities/show'
  get 'enlargements_qualities/new'
  get 'enlargements_qualities/edit'
  get 'enlargements_qualities/create'
  get 'enlargements_qualities/update'
  get 'enlargements_qualities/destroy'
  get 'electricities/index'
  get 'electricities/show'
  get 'electricities/new'
  get 'electricities/edit'
  get 'electricities/create'
  get 'electricities/update'
  get 'electricities/destroy'
  get 'dry_walls/index'
  get 'dry_walls/show'
  get 'dry_walls/new'
  get 'dry_walls/edit'
  get 'dry_walls/create'
  get 'dry_walls/update'
  get 'dry_walls/destroy'
  get 'drinking_waters/index'
  get 'drinking_waters/show'
  get 'drinking_waters/new'
  get 'drinking_waters/edit'
  get 'drinking_waters/create'
  get 'drinking_waters/update'
  get 'drinking_waters/destroy'
  get 'doors/index'
  get 'doors/show'
  get 'doors/new'
  get 'doors/edit'
  get 'doors/create'
  get 'doors/update'
  get 'doors/destroy'
  get 'door_frames/index'
  get 'door_frames/show'
  get 'door_frames/new'
  get 'door_frames/edit'
  get 'door_frames/create'
  get 'door_frames/update'
  get 'door_frames/destroy'
  get 'covers/index'
  get 'covers/show'
  get 'covers/new'
  get 'covers/edit'
  get 'covers/create'
  get 'covers/update'
  get 'covers/destroy'
  get 'closets/index'
  get 'closets/show'
  get 'closets/new'
  get 'closets/edit'
  get 'closets/create'
  get 'closets/update'
  get 'closets/destroy'
  get 'clients/index'
  get 'clients/show'
  get 'clients/new'
  get 'clients/edit'
  get 'clients/create'
  get 'clients/update'
  get 'clients/destroy'
  get 'client_types/index'
  get 'client_types/show'
  get 'client_types/new'
  get 'client_types/edit'
  get 'client_types/create'
  get 'client_types/update'
  get 'client_types/destroy'
  get 'cities/index'
  get 'cities/show'
  get 'cities/new'
  get 'cities/edit'
  get 'cities/create'
  get 'cities/update'
  get 'cities/destroy'
  get 'between_floor_slaps/index'
  get 'between_floor_slaps/show'
  get 'between_floor_slaps/new'
  get 'between_floor_slaps/edit'
  get 'between_floor_slaps/create'
  get 'between_floor_slaps/update'
  get 'between_floor_slaps/destroy'
  get 'assesments/index'
  get 'assesments/show'
  get 'assesments/new'
  get 'assesments/edit'
  get 'assesments/create'
  get 'assesments/update'
  get 'assesments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end