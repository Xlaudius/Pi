require 'test_helper'

class PropertyElectricitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_electricities_index_url
    assert_response :success
  end

  test "should get show" do
    get property_electricities_show_url
    assert_response :success
  end

  test "should get new" do
    get property_electricities_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_electricities_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_electricities_create_url
    assert_response :success
  end

  test "should get update" do
    get property_electricities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_electricities_destroy_url
    assert_response :success
  end

end
