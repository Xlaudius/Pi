# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_19_221556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", id: false, force: :cascade do |t|
    t.integer "id_"
  end

  create_table "active_storage_blobs", id: false, force: :cascade do |t|
    t.integer "id_"
  end

  create_table "assessments", force: :cascade do |t|
    t.bigint "states_id"
    t.string "location"
    t.boolean "inhabited"
    t.string "habitant"
    t.bigint "clients_id"
    t.bigint "owners_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_assessments_on_clients_id"
    t.index ["owners_id"], name: "index_assessments_on_owners_id"
    t.index ["states_id"], name: "index_assessments_on_states_id"
  end

  create_table "between_floor_slaps", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "client_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.integer "number"
    t.boolean "available"
    t.bigint "client_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_types_id"], name: "index_clients_on_client_types_id"
  end

  create_table "closets", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "covers", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "door_frames", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doors", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinking_waters", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dry_walls", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electricities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enlargements_qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exterior_closures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_terminations", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "furniture_covers", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "furnitures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gas", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heatings", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "housing_qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interior_closures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land_shapes", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenances", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pavements", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pools", force: :cascade do |t|
    t.string "img"
    t.float "volumen"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_pools_on_properties_id"
  end

  create_table "properties", force: :cascade do |t|
    t.float "debt_taxation"
    t.integer "antiquity"
    t.boolean "expropriation"
    t.boolean "sill"
    t.bigint "assessments_id"
    t.boolean "facilities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessments_id"], name: "index_properties_on_assessments_id"
  end

  create_table "property_between_floor_slaps", force: :cascade do |t|
    t.bigint "between_floor_slaps_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["between_floor_slaps_id"], name: "index_property_between_floor_slaps_on_between_floor_slaps_id"
    t.index ["properties_id"], name: "index_property_between_floor_slaps_on_properties_id"
  end

  create_table "property_covers", force: :cascade do |t|
    t.text "observations"
    t.bigint "properties_id"
    t.bigint "covers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["covers_id"], name: "index_property_covers_on_covers_id"
    t.index ["properties_id"], name: "index_property_covers_on_properties_id"
  end

  create_table "property_doors", force: :cascade do |t|
    t.bigint "doors_id"
    t.bigint "door_frames_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["door_frames_id"], name: "index_property_doors_on_door_frames_id"
    t.index ["doors_id"], name: "index_property_doors_on_doors_id"
    t.index ["properties_id"], name: "index_property_doors_on_properties_id"
  end

  create_table "property_drinking_waters", force: :cascade do |t|
    t.bigint "drinking_waters_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drinking_waters_id"], name: "index_property_drinking_waters_on_drinking_waters_id"
    t.index ["properties_id"], name: "index_property_drinking_waters_on_properties_id"
  end

  create_table "property_dry_walls", force: :cascade do |t|
    t.bigint "dry_walls_id"
    t.bigint "properties_id"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dry_walls_id"], name: "index_property_dry_walls_on_dry_walls_id"
    t.index ["properties_id"], name: "index_property_dry_walls_on_properties_id"
  end

  create_table "property_electricities", force: :cascade do |t|
    t.bigint "electricities_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["electricities_id"], name: "index_property_electricities_on_electricities_id"
    t.index ["properties_id"], name: "index_property_electricities_on_properties_id"
  end

  create_table "property_enlar_qualities", force: :cascade do |t|
    t.bigint "enlargements_qualities_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enlargements_qualities_id"], name: "index_property_enlar_qualities_on_enlargements_qualities_id"
    t.index ["properties_id"], name: "index_property_enlar_qualities_on_properties_id"
  end

  create_table "property_exterior_closures", force: :cascade do |t|
    t.string "other"
    t.bigint "properties_id"
    t.bigint "exterior_closures_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exterior_closures_id"], name: "index_property_exterior_closures_on_exterior_closures_id"
    t.index ["properties_id"], name: "index_property_exterior_closures_on_properties_id"
  end

  create_table "property_extern_terminations", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "external_terminations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["external_terminations_id"], name: "index_property_extern_terminations_on_external_terminations_id"
    t.index ["properties_id"], name: "index_property_extern_terminations_on_properties_id"
  end

  create_table "property_furnitures", force: :cascade do |t|
    t.bigint "furnitures_id"
    t.bigint "properties_id"
    t.bigint "furniture_covers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["furniture_covers_id"], name: "index_property_furnitures_on_furniture_covers_id"
    t.index ["furnitures_id"], name: "index_property_furnitures_on_furnitures_id"
    t.index ["properties_id"], name: "index_property_furnitures_on_properties_id"
  end

  create_table "property_gas", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "gas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gas_id"], name: "index_property_gas_on_gas_id"
    t.index ["properties_id"], name: "index_property_gas_on_properties_id"
  end

  create_table "property_heatings", force: :cascade do |t|
    t.bigint "heatings_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["heatings_id"], name: "index_property_heatings_on_heatings_id"
    t.index ["properties_id"], name: "index_property_heatings_on_properties_id"
  end

  create_table "property_housing_qualities", force: :cascade do |t|
    t.bigint "housing_qualities_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["housing_qualities_id"], name: "index_property_housing_qualities_on_housing_qualities_id"
    t.index ["properties_id"], name: "index_property_housing_qualities_on_properties_id"
  end

  create_table "property_interior_closures", force: :cascade do |t|
    t.string "other"
    t.bigint "properties_id"
    t.bigint "interior_closures_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interior_closures_id"], name: "index_property_interior_closures_on_interior_closures_id"
    t.index ["properties_id"], name: "index_property_interior_closures_on_properties_id"
  end

  create_table "property_land_shapes", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "land_shapes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["land_shapes_id"], name: "index_property_land_shapes_on_land_shapes_id"
    t.index ["properties_id"], name: "index_property_land_shapes_on_properties_id"
  end

  create_table "property_maintenances", force: :cascade do |t|
    t.bigint "maintenances_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maintenances_id"], name: "index_property_maintenances_on_maintenances_id"
    t.index ["properties_id"], name: "index_property_maintenances_on_properties_id"
  end

  create_table "property_pavements", force: :cascade do |t|
    t.bigint "pavements_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pavements_id"], name: "index_property_pavements_on_pavements_id"
    t.index ["properties_id"], name: "index_property_pavements_on_properties_id"
  end

  create_table "property_property_types", force: :cascade do |t|
    t.bigint "property_types_id"
    t.bigint "properties_id"
    t.integer "sites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_property_types_on_properties_id"
    t.index ["property_types_id"], name: "index_property_property_types_on_property_types_id"
  end

  create_table "property_roads", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "roads_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_roads_on_properties_id"
    t.index ["roads_id"], name: "index_property_roads_on_roads_id"
  end

  create_table "property_rols", force: :cascade do |t|
    t.integer "block"
    t.integer "predial"
    t.bigint "provinces_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_rols_on_properties_id"
    t.index ["provinces_id"], name: "index_property_rols_on_provinces_id"
  end

  create_table "property_roofings", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "roofings_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_roofings_on_properties_id"
    t.index ["roofings_id"], name: "index_property_roofings_on_roofings_id"
  end

  create_table "property_sec_characteristics", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "sector_characteristics_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_sec_characteristics_on_properties_id"
    t.index ["sector_characteristics_id"], name: "index_property_sec_characteristics_on_sector_characteristics_id"
  end

  create_table "property_sectors", force: :cascade do |t|
    t.float "distancia"
    t.bigint "properties_id"
    t.bigint "sectors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_sectors_on_properties_id"
    t.index ["sectors_id"], name: "index_property_sectors_on_sectors_id"
  end

  create_table "property_sewerages", force: :cascade do |t|
    t.bigint "sewerages_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_sewerages_on_properties_id"
    t.index ["sewerages_id"], name: "index_property_sewerages_on_sewerages_id"
  end

  create_table "property_sheds", force: :cascade do |t|
    t.bigint "sheds_id"
    t.bigint "properties_id"
    t.bigint "shed_materials_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_sheds_on_properties_id"
    t.index ["shed_materials_id"], name: "index_property_sheds_on_shed_materials_id"
    t.index ["sheds_id"], name: "index_property_sheds_on_sheds_id"
  end

  create_table "property_sidewalks", force: :cascade do |t|
    t.bigint "sidewalks_id"
    t.bigint "properties_id"
    t.float "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_sidewalks_on_properties_id"
    t.index ["sidewalks_id"], name: "index_property_sidewalks_on_sidewalks_id"
  end

  create_table "property_stairs", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "stairs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_stairs_on_properties_id"
    t.index ["stairs_id"], name: "index_property_stairs_on_stairs_id"
  end

  create_table "property_street_locations", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "street_locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_street_locations_on_properties_id"
    t.index ["street_locations_id"], name: "index_property_street_locations_on_street_locations_id"
  end

  create_table "property_structures", force: :cascade do |t|
    t.text "observations"
    t.bigint "properties_id"
    t.bigint "structures_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_structures_on_properties_id"
    t.index ["structures_id"], name: "index_property_structures_on_structures_id"
  end

  create_table "property_toilet_artifacts", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "toilet_artifacts_id"
    t.bigint "qualities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_toilet_artifacts_on_properties_id"
    t.index ["qualities_id"], name: "index_property_toilet_artifacts_on_qualities_id"
    t.index ["toilet_artifacts_id"], name: "index_property_toilet_artifacts_on_toilet_artifacts_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_water_rain_ducts", force: :cascade do |t|
    t.bigint "properties_id"
    t.bigint "water_rain_ducts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_water_rain_ducts_on_properties_id"
    t.index ["water_rain_ducts_id"], name: "index_property_water_rain_ducts_on_water_rain_ducts_id"
  end

  create_table "property_windows", force: :cascade do |t|
    t.bigint "windows_id"
    t.bigint "properties_id"
    t.string "other"
    t.boolean "protections"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_property_windows_on_properties_id"
    t.index ["windows_id"], name: "index_property_windows_on_windows_id"
  end

  create_table "propertyclosets", force: :cascade do |t|
    t.bigint "closets_id"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["closets_id"], name: "index_propertyclosets_on_closets_id"
    t.index ["properties_id"], name: "index_propertyclosets_on_properties_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.bigint "cities_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_provinces_on_cities_id"
  end

  create_table "qualities", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roads", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roofings", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sector_characteristics", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_yards", force: :cascade do |t|
    t.string "img"
    t.float "mts2"
    t.bigint "properties_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["properties_id"], name: "index_service_yards_on_properties_id"
  end

  create_table "sewerages", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shed_materials", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shed_sections", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sheds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sidewalks", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stairs", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "street_locations", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilet_artifacts", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_rain_ducts", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "windows", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assessments", "clients", column: "clients_id"
  add_foreign_key "assessments", "owners", column: "owners_id"
  add_foreign_key "assessments", "states", column: "states_id"
  add_foreign_key "cities", "regions"
  add_foreign_key "clients", "client_types", column: "client_types_id"
  add_foreign_key "pools", "properties", column: "properties_id"
  add_foreign_key "properties", "assessments", column: "assessments_id"
  add_foreign_key "property_between_floor_slaps", "between_floor_slaps", column: "between_floor_slaps_id"
  add_foreign_key "property_between_floor_slaps", "properties", column: "properties_id"
  add_foreign_key "property_covers", "covers", column: "covers_id"
  add_foreign_key "property_covers", "properties", column: "properties_id"
  add_foreign_key "property_doors", "door_frames", column: "door_frames_id"
  add_foreign_key "property_doors", "doors", column: "doors_id"
  add_foreign_key "property_doors", "properties", column: "properties_id"
  add_foreign_key "property_drinking_waters", "drinking_waters", column: "drinking_waters_id"
  add_foreign_key "property_drinking_waters", "properties", column: "properties_id"
  add_foreign_key "property_dry_walls", "dry_walls", column: "dry_walls_id"
  add_foreign_key "property_dry_walls", "properties", column: "properties_id"
  add_foreign_key "property_electricities", "electricities", column: "electricities_id"
  add_foreign_key "property_electricities", "properties", column: "properties_id"
  add_foreign_key "property_enlar_qualities", "enlargements_qualities", column: "enlargements_qualities_id"
  add_foreign_key "property_enlar_qualities", "properties", column: "properties_id"
  add_foreign_key "property_exterior_closures", "exterior_closures", column: "exterior_closures_id"
  add_foreign_key "property_exterior_closures", "properties", column: "properties_id"
  add_foreign_key "property_extern_terminations", "external_terminations", column: "external_terminations_id"
  add_foreign_key "property_extern_terminations", "properties", column: "properties_id"
  add_foreign_key "property_furnitures", "furniture_covers", column: "furniture_covers_id"
  add_foreign_key "property_furnitures", "furnitures", column: "furnitures_id"
  add_foreign_key "property_furnitures", "properties", column: "properties_id"
  add_foreign_key "property_gas", "gas", column: "gas_id"
  add_foreign_key "property_gas", "properties", column: "properties_id"
  add_foreign_key "property_heatings", "heatings", column: "heatings_id"
  add_foreign_key "property_heatings", "properties", column: "properties_id"
  add_foreign_key "property_housing_qualities", "housing_qualities", column: "housing_qualities_id"
  add_foreign_key "property_housing_qualities", "properties", column: "properties_id"
  add_foreign_key "property_interior_closures", "interior_closures", column: "interior_closures_id"
  add_foreign_key "property_interior_closures", "properties", column: "properties_id"
  add_foreign_key "property_land_shapes", "land_shapes", column: "land_shapes_id"
  add_foreign_key "property_land_shapes", "properties", column: "properties_id"
  add_foreign_key "property_maintenances", "maintenances", column: "maintenances_id"
  add_foreign_key "property_maintenances", "properties", column: "properties_id"
  add_foreign_key "property_pavements", "pavements", column: "pavements_id"
  add_foreign_key "property_pavements", "properties", column: "properties_id"
  add_foreign_key "property_property_types", "properties", column: "properties_id"
  add_foreign_key "property_property_types", "property_types", column: "property_types_id"
  add_foreign_key "property_roads", "properties", column: "properties_id"
  add_foreign_key "property_roads", "roads", column: "roads_id"
  add_foreign_key "property_rols", "properties", column: "properties_id"
  add_foreign_key "property_rols", "provinces", column: "provinces_id"
  add_foreign_key "property_roofings", "properties", column: "properties_id"
  add_foreign_key "property_roofings", "roofings", column: "roofings_id"
  add_foreign_key "property_sec_characteristics", "properties", column: "properties_id"
  add_foreign_key "property_sec_characteristics", "sector_characteristics", column: "sector_characteristics_id"
  add_foreign_key "property_sectors", "properties", column: "properties_id"
  add_foreign_key "property_sectors", "sectors", column: "sectors_id"
  add_foreign_key "property_sewerages", "properties", column: "properties_id"
  add_foreign_key "property_sewerages", "sewerages", column: "sewerages_id"
  add_foreign_key "property_sheds", "properties", column: "properties_id"
  add_foreign_key "property_sheds", "shed_materials", column: "shed_materials_id"
  add_foreign_key "property_sheds", "sheds", column: "sheds_id"
  add_foreign_key "property_sidewalks", "properties", column: "properties_id"
  add_foreign_key "property_sidewalks", "sidewalks", column: "sidewalks_id"
  add_foreign_key "property_stairs", "properties", column: "properties_id"
  add_foreign_key "property_stairs", "stairs", column: "stairs_id"
  add_foreign_key "property_street_locations", "properties", column: "properties_id"
  add_foreign_key "property_street_locations", "street_locations", column: "street_locations_id"
  add_foreign_key "property_structures", "properties", column: "properties_id"
  add_foreign_key "property_structures", "structures", column: "structures_id"
  add_foreign_key "property_toilet_artifacts", "properties", column: "properties_id"
  add_foreign_key "property_toilet_artifacts", "qualities", column: "qualities_id"
  add_foreign_key "property_toilet_artifacts", "toilet_artifacts", column: "toilet_artifacts_id"
  add_foreign_key "property_water_rain_ducts", "properties", column: "properties_id"
  add_foreign_key "property_water_rain_ducts", "water_rain_ducts", column: "water_rain_ducts_id"
  add_foreign_key "property_windows", "properties", column: "properties_id"
  add_foreign_key "property_windows", "windows", column: "windows_id"
  add_foreign_key "propertyclosets", "closets", column: "closets_id"
  add_foreign_key "propertyclosets", "properties", column: "properties_id"
  add_foreign_key "provinces", "cities", column: "cities_id"
  add_foreign_key "service_yards", "properties", column: "properties_id"
end
