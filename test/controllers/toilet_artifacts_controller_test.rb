require 'test_helper'

class ToiletArtifactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toilet_artifacts_index_url
    assert_response :success
  end

  test "should get show" do
    get toilet_artifacts_show_url
    assert_response :success
  end

  test "should get new" do
    get toilet_artifacts_new_url
    assert_response :success
  end

  test "should get edit" do
    get toilet_artifacts_edit_url
    assert_response :success
  end

  test "should get create" do
    get toilet_artifacts_create_url
    assert_response :success
  end

  test "should get update" do
    get toilet_artifacts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get toilet_artifacts_destroy_url
    assert_response :success
  end

end
