require 'test_helper'

class LandShapesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get land_shapes_index_url
    assert_response :success
  end

  test "should get show" do
    get land_shapes_show_url
    assert_response :success
  end

  test "should get new" do
    get land_shapes_new_url
    assert_response :success
  end

  test "should get edit" do
    get land_shapes_edit_url
    assert_response :success
  end

  test "should get create" do
    get land_shapes_create_url
    assert_response :success
  end

  test "should get update" do
    get land_shapes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get land_shapes_destroy_url
    assert_response :success
  end

end
