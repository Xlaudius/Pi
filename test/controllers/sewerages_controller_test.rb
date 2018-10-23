require 'test_helper'

class SeweragesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sewerages_index_url
    assert_response :success
  end

  test "should get show" do
    get sewerages_show_url
    assert_response :success
  end

  test "should get new" do
    get sewerages_new_url
    assert_response :success
  end

  test "should get edit" do
    get sewerages_edit_url
    assert_response :success
  end

  test "should get create" do
    get sewerages_create_url
    assert_response :success
  end

  test "should get update" do
    get sewerages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sewerages_destroy_url
    assert_response :success
  end

end
