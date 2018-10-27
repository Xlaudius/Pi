require 'test_helper'

class PropertyExternTerminationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_extern_terminations_index_url
    assert_response :success
  end

  test "should get show" do
    get property_extern_terminations_show_url
    assert_response :success
  end

  test "should get new" do
    get property_extern_terminations_new_url
    assert_response :success
  end

  test "should get edit" do
    get property_extern_terminations_edit_url
    assert_response :success
  end

  test "should get create" do
    get property_extern_terminations_create_url
    assert_response :success
  end

  test "should get update" do
    get property_extern_terminations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_extern_terminations_destroy_url
    assert_response :success
  end

end
