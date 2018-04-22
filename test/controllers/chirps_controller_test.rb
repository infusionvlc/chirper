require 'test_helper'

class ChirpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chirps_index_url
    assert_response :success
  end

  test "should get new" do
    get chirps_new_url
    assert_response :success
  end

  test "should get create" do
    get chirps_create_url
    assert_response :success
  end

  test "should get edit" do
    get chirps_edit_url
    assert_response :success
  end

  test "should get update" do
    get chirps_update_url
    assert_response :success
  end

  test "should get show" do
    get chirps_show_url
    assert_response :success
  end

  test "should get destroy" do
    get chirps_destroy_url
    assert_response :success
  end

end
