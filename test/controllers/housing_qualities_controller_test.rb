require 'test_helper'

class HousingQualitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get housing_qualities_index_url
    assert_response :success
  end

  test "should get show" do
    get housing_qualities_show_url
    assert_response :success
  end

  test "should get new" do
    get housing_qualities_new_url
    assert_response :success
  end

  test "should get edit" do
    get housing_qualities_edit_url
    assert_response :success
  end

  test "should get create" do
    get housing_qualities_create_url
    assert_response :success
  end

  test "should get update" do
    get housing_qualities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get housing_qualities_destroy_url
    assert_response :success
  end

end
