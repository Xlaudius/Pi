require 'test_helper'

class StreetLocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get street_locations_index_url
    assert_response :success
  end

  test "should get show" do
    get street_locations_show_url
    assert_response :success
  end

  test "should get new" do
    get street_locations_new_url
    assert_response :success
  end

  test "should get edit" do
    get street_locations_edit_url
    assert_response :success
  end

  test "should get create" do
    get street_locations_create_url
    assert_response :success
  end

  test "should get update" do
    get street_locations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get street_locations_destroy_url
    assert_response :success
  end

end
