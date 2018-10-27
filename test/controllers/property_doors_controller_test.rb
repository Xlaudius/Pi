require 'test_helper'

class PropertyDoorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_doors_index_url
    assert_response :success
  end

  test "should get show" do
    get property_doors_show_url
    assert_response :success
  end

  test "should get new" do
    get property_doors_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_doors_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_doors_create_url
    assert_response :success
  end

  test "should get update" do
    get property_doors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_doors_destroy_url
    assert_response :success
  end

end
