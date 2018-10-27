require 'test_helper'

class DryWallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dry_walls_index_url
    assert_response :success
  end

  test "should get show" do
    get dry_walls_show_url
    assert_response :success
  end

  test "should get new" do
    get dry_walls_new_url
    assert_response :success
  end

  test "should get edit" do
    get dry_walls_edit_url
    assert_response :success
  end

  test "should get create" do
    get dry_walls_create_url
    assert_response :success
  end

  test "should get update" do
    get dry_walls_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dry_walls_destroy_url
    assert_response :success
  end

end
