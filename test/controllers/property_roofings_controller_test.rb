require 'test_helper'

class PropertyRoofingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_roofings_index_url
    assert_response :success
  end

  test "should get show" do
    get property_roofings_show_url
    assert_response :success
  end

  test "should get new" do
    get property_roofings_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_roofings_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_roofings_create_url
    assert_response :success
  end

  test "should get update" do
    get property_roofings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_roofings_destroy_url
    assert_response :success
  end

end
