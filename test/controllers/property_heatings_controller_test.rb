require 'test_helper'

class PropertyHeatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_heatings_index_url
    assert_response :success
  end

  test "should get show" do
    get property_heatings_show_url
    assert_response :success
  end

  test "should get new" do
    get property_heatings_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_heatings_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_heatings_create_url
    assert_response :success
  end

  test "should get update" do
    get property_heatings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_heatings_destroy_url
    assert_response :success
  end

end
