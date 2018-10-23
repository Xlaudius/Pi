require 'test_helper'

class PropertyGasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_gas_index_url
    assert_response :success
  end

  test "should get show" do
    get property_gas_show_url
    assert_response :success
  end

  test "should get new" do
    get property_gas_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_gas_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_gas_create_url
    assert_response :success
  end

  test "should get update" do
    get property_gas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_gas_destroy_url
    assert_response :success
  end

end
