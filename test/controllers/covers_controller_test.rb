require 'test_helper'

class CoversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get covers_index_url
    assert_response :success
  end

  test "should get show" do
    get covers_show_url
    assert_response :success
  end

  test "should get new" do
    get covers_new_url
    assert_response :success
  end

  test "should get edit" do
    get covers_edit_url
    assert_response :success
  end

  test "should get create" do
    get covers_create_url
    assert_response :success
  end

  test "should get update" do
    get covers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get covers_destroy_url
    assert_response :success
  end

end
