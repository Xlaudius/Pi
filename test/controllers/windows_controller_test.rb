require 'test_helper'

class WindowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get windows_index_url
    assert_response :success
  end

  test "should get show" do
    get windows_show_url
    assert_response :success
  end

  test "should get new" do
    get windows_new_url
    assert_response :success
  end

  test "should get edit" do
    get windows_edit_url
    assert_response :success
  end

  test "should get create" do
    get windows_create_url
    assert_response :success
  end

  test "should get update" do
    get windows_update_url
    assert_response :success
  end

  test "should get destroy" do
    get windows_destroy_url
    assert_response :success
  end

end
