require 'test_helper'

class WaterRainDuctsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get water_rain_ducts_index_url
    assert_response :success
  end

  test "should get show" do
    get water_rain_ducts_show_url
    assert_response :success
  end

  test "should get new" do
    get water_rain_ducts_new_url
    assert_response :success
  end

  test "should get edit" do
    get water_rain_ducts_edit_url
    assert_response :success
  end

  test "should get create" do
    get water_rain_ducts_create_url
    assert_response :success
  end

  test "should get update" do
    get water_rain_ducts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get water_rain_ducts_destroy_url
    assert_response :success
  end

end
