require 'test_helper'

class PropertyLandShapesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_land_shapes_index_url
    assert_response :success
  end

  test "should get show" do
    get property_land_shapes_show_url
    assert_response :success
  end

  test "should get new" do
    get property_land_shapes_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_land_shapes_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_land_shapes_create_url
    assert_response :success
  end

  test "should get update" do
    get property_land_shapes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_land_shapes_destroy_url
    assert_response :success
  end

end
