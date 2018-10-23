require 'test_helper'

class StairsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stairs_index_url
    assert_response :success
  end

  test "should get show" do
    get stairs_show_url
    assert_response :success
  end

  test "should get new" do
    get stairs_new_url
    assert_response :success
  end

  test "should get edit" do
    get stairs_edit_url
    assert_response :success
  end

  test "should get create" do
    get stairs_create_url
    assert_response :success
  end

  test "should get update" do
    get stairs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get stairs_destroy_url
    assert_response :success
  end

end
