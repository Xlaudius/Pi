require 'test_helper'

class BetweenFloorSlapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get between_floor_slaps_index_url
    assert_response :success
  end

  test "should get show" do
    get between_floor_slaps_show_url
    assert_response :success
  end

  test "should get new" do
    get between_floor_slaps_new_url
    assert_response :success
  end

  test "should get edit" do
    get between_floor_slaps_edit_url
    assert_response :success
  end

  test "should get create" do
    get between_floor_slaps_create_url
    assert_response :success
  end

  test "should get update" do
    get between_floor_slaps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get between_floor_slaps_destroy_url
    assert_response :success
  end

end
