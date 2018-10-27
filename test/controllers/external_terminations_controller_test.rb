require 'test_helper'

class ExternalTerminationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get external_terminations_index_url
    assert_response :success
  end

  test "should get show" do
    get external_terminations_show_url
    assert_response :success
  end

  test "should get new" do
    get external_terminations_new_url
    assert_response :success
  end

  test "should get edit" do
    get external_terminations_edit_url
    assert_response :success
  end

  test "should get create" do
    get external_terminations_create_url
    assert_response :success
  end

  test "should get update" do
    get external_terminations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get external_terminations_destroy_url
    assert_response :success
  end

end
