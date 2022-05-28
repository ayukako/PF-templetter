require "test_helper"

class Admin::EnvelopesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_envelopes_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_envelopes_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_envelopes_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_envelopes_destroy_url
    assert_response :success
  end
end
