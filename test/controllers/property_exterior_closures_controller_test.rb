require 'test_helper'

class PropertyExteriorClosuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_exterior_closures_index_url
    assert_response :success
  end

  test "should get show" do
    get property_exterior_closures_show_url
    assert_response :success
  end

  test "should get new" do
    get property_exterior_closures_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_exterior_closures_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_exterior_closures_create_url
    assert_response :success
  end

  test "should get update" do
    get property_exterior_closures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_exterior_closures_destroy_url
    assert_response :success
  end

end
