require 'test_helper'

class ElectricitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get electricities_index_url
    assert_response :success
  end

  test "should get show" do
    get electricities_show_url
    assert_response :success
  end

  test "should get new" do
    get electricities_new_url
    assert_response :success
  end

  test "should get edit" do
    get electricities_edit_url
    assert_response :success
  end

  test "should get create" do
    get electricities_create_url
    assert_response :success
  end

  test "should get update" do
    get electricities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get electricities_destroy_url
    assert_response :success
  end

end
