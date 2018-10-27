require 'test_helper'

class ServiceYardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_yards_index_url
    assert_response :success
  end

  test "should get show" do
    get service_yards_show_url
    assert_response :success
  end

  test "should get new" do
    get service_yards_new_url
    assert_response :success
  end

  test "should get edit" do
    get service_yards_edit_url
    assert_response :success
  end

  test "should get create" do
    get service_yards_create_url
    assert_response :success
  end

  test "should get update" do
    get service_yards_update_url
    assert_response :success
  end

  test "should get destroy" do
    get service_yards_destroy_url
    assert_response :success
  end

end
