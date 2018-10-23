require 'test_helper'

class PropertyStreetLocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_street_locations_index_url
    assert_response :success
  end

  test "should get show" do
    get property_street_locations_show_url
    assert_response :success
  end

  test "should get new" do
    get property_street_locations_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_street_locations_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_street_locations_create_url
    assert_response :success
  end

  test "should get update" do
    get property_street_locations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_street_locations_destroy_url
    assert_response :success
  end

end
