require 'test_helper'

class GasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gas_index_url
    assert_response :success
  end

  test "should get show" do
    get gas_show_url
    assert_response :success
  end

  test "should get new" do
    get gas_new_url
    assert_response :success
  end

  test "should get edit" do
    get gas_edit_url
    assert_response :success
  end

  test "should get create" do
    get gas_create_url
    assert_response :success
  end

  test "should get update" do
    get gas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gas_destroy_url
    assert_response :success
  end

end
