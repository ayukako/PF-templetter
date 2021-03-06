require "test_helper"

class Admin::PapersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_papers_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_papers_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_papers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_papers_destroy_url
    assert_response :success
  end
end
