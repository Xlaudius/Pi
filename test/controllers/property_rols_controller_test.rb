require 'test_helper'

class PropertyRolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_rols_index_url
    assert_response :success
  end

  test "should get show" do
    get property_rols_show_url
    assert_response :success
  end

  test "should get new" do
    get property_rols_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_rols_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_rols_create_url
    assert_response :success
  end

  test "should get update" do
    get property_rols_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_rols_destroy_url
    assert_response :success
  end

end
