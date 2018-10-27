require 'test_helper'

class RoofingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roofings_index_url
    assert_response :success
  end

  test "should get show" do
    get roofings_show_url
    assert_response :success
  end

  test "should get new" do
    get roofings_new_url
    assert_response :success
  end

  test "should get edit" do
    get roofings_edit_url
    assert_response :success
  end

  test "should get create" do
    get roofings_create_url
    assert_response :success
  end

  test "should get update" do
    get roofings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get roofings_destroy_url
    assert_response :success
  end

end
