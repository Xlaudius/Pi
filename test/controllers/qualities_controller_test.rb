require 'test_helper'

class QualitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qualities_index_url
    assert_response :success
  end

  test "should get show" do
    get qualities_show_url
    assert_response :success
  end

  test "should get new" do
    get qualities_new_url
    assert_response :success
  end

  test "should get edit" do
    get qualities_edit_url
    assert_response :success
  end

  test "should get create" do
    get qualities_create_url
    assert_response :success
  end

  test "should get update" do
    get qualities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get qualities_destroy_url
    assert_response :success
  end

end
