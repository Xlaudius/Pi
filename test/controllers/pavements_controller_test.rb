require 'test_helper'

class PavementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pavements_index_url
    assert_response :success
  end

  test "should get show" do
    get pavements_show_url
    assert_response :success
  end

  test "should get new" do
    get pavements_new_url
    assert_response :success
  end

  test "should get edit" do
    get pavements_edit_url
    assert_response :success
  end

  test "should get create" do
    get pavements_create_url
    assert_response :success
  end

  test "should get update" do
    get pavements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pavements_destroy_url
    assert_response :success
  end

end
