require 'test_helper'

class ShedMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shed_materials_index_url
    assert_response :success
  end

  test "should get show" do
    get shed_materials_show_url
    assert_response :success
  end

  test "should get new" do
    get shed_materials_new_url
    assert_response :success
  end

  test "should get edit" do
    get shed_materials_edit_url
    assert_response :success
  end

  test "should get create" do
    get shed_materials_create_url
    assert_response :success
  end

  test "should get update" do
    get shed_materials_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shed_materials_destroy_url
    assert_response :success
  end

end
