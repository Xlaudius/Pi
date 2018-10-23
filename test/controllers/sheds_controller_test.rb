require 'test_helper'

class ShedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sheds_index_url
    assert_response :success
  end

  test "should get show" do
    get sheds_show_url
    assert_response :success
  end

  test "should get new" do
    get sheds_new_url
    assert_response :success
  end

  test "should get edit" do
    get sheds_edit_url
    assert_response :success
  end

  test "should get create" do
    get sheds_create_url
    assert_response :success
  end

  test "should get update" do
    get sheds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sheds_destroy_url
    assert_response :success
  end

end
