require 'test_helper'

class DoorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doors_index_url
    assert_response :success
  end

  test "should get show" do
    get doors_show_url
    assert_response :success
  end

  test "should get new" do
    get doors_new_url
    assert_response :success
  end

  test "should get edit" do
    get doors_edit_url
    assert_response :success
  end

  test "should get create" do
    get doors_create_url
    assert_response :success
  end

  test "should get update" do
    get doors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get doors_destroy_url
    assert_response :success
  end

end
