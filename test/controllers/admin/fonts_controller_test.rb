require "test_helper"

class Admin::FontsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_fonts_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_fonts_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_fonts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_fonts_destroy_url
    assert_response :success
  end
end
