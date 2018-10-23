require 'test_helper'

class ProvincesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get provinces_index_url
    assert_response :success
  end

  test "should get show" do
    get provinces_show_url
    assert_response :success
  end

  test "should get new" do
    get provinces_new_url
    assert_response :success
  end

  test "should get edit" do
    get provinces_edit_url
    assert_response :success
  end

  test "should get create" do
    get provinces_create_url
    assert_response :success
  end

  test "should get update" do
    get provinces_update_url
    assert_response :success
  end

  test "should get destroy" do
    get provinces_destroy_url
    assert_response :success
  end

end
