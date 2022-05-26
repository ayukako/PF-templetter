require "test_helper"

class Public::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_items_new_url
    assert_response :success
  end

  test "should get show" do
    get public_items_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_items_update_url
    assert_response :success
  end

  test "should get create" do
    get public_items_create_url
    assert_response :success
  end

  test "should get destroy_all" do
    get public_items_destroy_all_url
    assert_response :success
  end
end
