require 'test_helper'

class DrinkingWatersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drinking_waters_index_url
    assert_response :success
  end

  test "should get show" do
    get drinking_waters_show_url
    assert_response :success
  end

  test "should get new" do
    get drinking_waters_new_url
    assert_response :success
  end

  test "should get edit" do
    get drinking_waters_edit_url
    assert_response :success
  end

  test "should get create" do
    get drinking_waters_create_url
    assert_response :success
  end

  test "should get update" do
    get drinking_waters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get drinking_waters_destroy_url
    assert_response :success
  end

end
