require 'test_helper'

class HeatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heatings_index_url
    assert_response :success
  end

  test "should get show" do
    get heatings_show_url
    assert_response :success
  end

  test "should get new" do
    get heatings_new_url
    assert_response :success
  end

  test "should get edit" do
    get heatings_edit_url
    assert_response :success
  end

  test "should get create" do
    get heatings_create_url
    assert_response :success
  end

  test "should get update" do
    get heatings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get heatings_destroy_url
    assert_response :success
  end

end
