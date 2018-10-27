require 'test_helper'

class PropertyEnlarQualitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_enlar_qualities_index_url
    assert_response :success
  end

  test "should get show" do
    get property_enlar_qualities_show_url
    assert_response :success
  end

  test "should get new" do
    get property_enlar_qualities_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_enlar_qualities_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_enlar_qualities_create_url
    assert_response :success
  end

  test "should get update" do
    get property_enlar_qualities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_enlar_qualities_destroy_url
    assert_response :success
  end

end
