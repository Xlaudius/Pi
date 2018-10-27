require 'test_helper'

class EnlargementsQualitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enlargements_qualities_index_url
    assert_response :success
  end

  test "should get show" do
    get enlargements_qualities_show_url
    assert_response :success
  end

  test "should get new" do
    get enlargements_qualities_new_url
    assert_response :success
  end

  test "should get edit" do
    get enlargements_qualities_edit_url
    assert_response :success
  end

  test "should get create" do
    get enlargements_qualities_create_url
    assert_response :success
  end

  test "should get update" do
    get enlargements_qualities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get enlargements_qualities_destroy_url
    assert_response :success
  end

end
