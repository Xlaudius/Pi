require 'test_helper'

class PropertyWaterRainDuctsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_water_rain_ducts_index_url
    assert_response :success
  end

  test "should get show" do
    get property_water_rain_ducts_show_url
    assert_response :success
  end

  test "should get new" do
    get property_water_rain_ducts_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_water_rain_ducts_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_water_rain_ducts_create_url
    assert_response :success
  end

  test "should get update" do
    get property_water_rain_ducts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_water_rain_ducts_destroy_url
    assert_response :success
  end

end
