require 'test_helper'

class SidewalksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sidewalks_index_url
    assert_response :success
  end

  test "should get show" do
    get sidewalks_show_url
    assert_response :success
  end

  test "should get new" do
    get sidewalks_new_url
    assert_response :success
  end

  test "should get edit" do
    get sidewalks_edit_url
    assert_response :success
  end

  test "should get create" do
    get sidewalks_create_url
    assert_response :success
  end

  test "should get update" do
    get sidewalks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sidewalks_destroy_url
    assert_response :success
  end

end
