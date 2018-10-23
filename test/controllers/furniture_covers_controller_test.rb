require 'test_helper'

class FurnitureCoversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get furniture_covers_index_url
    assert_response :success
  end

  test "should get show" do
    get furniture_covers_show_url
    assert_response :success
  end

  test "should get new" do
    get furniture_covers_new_url
    assert_response :success
  end

  test "should get edit" do
    get furniture_covers_edit_url
    assert_response :success
  end

  test "should get create" do
    get furniture_covers_create_url
    assert_response :success
  end

  test "should get update" do
    get furniture_covers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get furniture_covers_destroy_url
    assert_response :success
  end

end
