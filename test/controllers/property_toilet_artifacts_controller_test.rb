require 'test_helper'

class PropertyToiletArtifactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_toilet_artifacts_index_url
    assert_response :success
  end

  test "should get show" do
    get property_toilet_artifacts_show_url
    assert_response :success
  end

  test "should get new" do
    get property_toilet_artifacts_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_toilet_artifacts_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_toilet_artifacts_create_url
    assert_response :success
  end

  test "should get update" do
    get property_toilet_artifacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_toilet_artifacts_destroy_url
    assert_response :success
  end

end
