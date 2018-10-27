require 'test_helper'

class PropertySecCharacteristicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_sec_characteristics_index_url
    assert_response :success
  end

  test "should get show" do
    get property_sec_characteristics_show_url
    assert_response :success
  end

  test "should get new" do
    get property_sec_characteristics_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_sec_characteristics_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_sec_characteristics_create_url
    assert_response :success
  end

  test "should get update" do
    get property_sec_characteristics_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_sec_characteristics_destroy_url
    assert_response :success
  end

end
