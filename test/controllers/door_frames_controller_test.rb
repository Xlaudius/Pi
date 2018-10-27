require 'test_helper'

class DoorFramesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get door_frames_index_url
    assert_response :success
  end

  test "should get show" do
    get door_frames_show_url
    assert_response :success
  end

  test "should get new" do
    get door_frames_new_url
    assert_response :success
  end

  test "should get edit" do
    get door_frames_edit_url
    assert_response :success
  end

  test "should get create" do
    get door_frames_create_url
    assert_response :success
  end

  test "should get update" do
    get door_frames_update_url
    assert_response :success
  end

  test "should get destroy" do
    get door_frames_destroy_url
    assert_response :success
  end

end
