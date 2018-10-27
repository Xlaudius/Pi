require 'test_helper'

class SectorCharacteristicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sector_characteristics_index_url
    assert_response :success
  end

  test "should get show" do
    get sector_characteristics_show_url
    assert_response :success
  end

  test "should get new" do
    get sector_characteristics_new_url
    assert_response :success
  end

  test "should get edit" do
    get sector_characteristics_edit_url
    assert_response :success
  end

  test "should get create" do
    get sector_characteristics_create_url
    assert_response :success
  end

  test "should get update" do
    get sector_characteristics_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sector_characteristics_destroy_url
    assert_response :success
  end

end
