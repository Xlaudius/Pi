require 'test_helper'

class PropertyBetweenFloorSlapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_between_floor_slaps_index_url
    assert_response :success
  end

  test "should get show" do
    get property_between_floor_slaps_show_url
    assert_response :success
  end

  test "should get new" do
    get property_between_floor_slaps_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_between_floor_slaps_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_between_floor_slaps_create_url
    assert_response :success
  end

  test "should get update" do
    get property_between_floor_slaps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_between_floor_slaps_destroy_url
    assert_response :success
  end

end
