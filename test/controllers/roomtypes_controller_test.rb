require "test_helper"

class RoomtypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roomtypes_index_url
    assert_response :success
  end

  test "should get new" do
    get roomtypes_new_url
    assert_response :success
  end

  test "should get create" do
    get roomtypes_create_url
    assert_response :success
  end

  test "should get edit" do
    get roomtypes_edit_url
    assert_response :success
  end

  test "should get update" do
    get roomtypes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get roomtypes_destroy_url
    assert_response :success
  end
end
