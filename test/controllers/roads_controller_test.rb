require 'test_helper'

class RoadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roads_index_url
    assert_response :success
  end

  test "should get show" do
    get roads_show_url
    assert_response :success
  end

  test "should get new" do
    get roads_new_url
    assert_response :success
  end

  test "should get edit" do
    get roads_edit_url
    assert_response :success
  end

  test "should get create" do
    get roads_create_url
    assert_response :success
  end

  test "should get update" do
    get roads_update_url
    assert_response :success
  end

  test "should get destroy" do
    get roads_destroy_url
    assert_response :success
  end

end
