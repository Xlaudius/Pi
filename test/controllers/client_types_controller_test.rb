require 'test_helper'

class ClientTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_types_index_url
    assert_response :success
  end

  test "should get show" do
    get client_types_show_url
    assert_response :success
  end

  test "should get new" do
    get client_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get client_types_edit_url
    assert_response :success
  end

  test "should get create" do
    get client_types_create_url
    assert_response :success
  end

  test "should get update" do
    get client_types_update_url
    assert_response :success
  end

  test "should get destroy" do
    get client_types_destroy_url
    assert_response :success
  end

end
