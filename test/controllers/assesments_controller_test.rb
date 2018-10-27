require 'test_helper'

class AssesmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assesments_index_url
    assert_response :success
  end

  test "should get show" do
    get assesments_show_url
    assert_response :success
  end

  test "should get new" do
    get assesments_new_url
    assert_response :success
  end

  test "should get edit" do
    get assesments_edit_url
    assert_response :success
  end

  test "should get create" do
    get assesments_create_url
    assert_response :success
  end

  test "should get update" do
    get assesments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get assesments_destroy_url
    assert_response :success
  end

end
