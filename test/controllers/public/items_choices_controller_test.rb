require "test_helper"

class Public::ItemsChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_items_choices_index_url
    assert_response :success
  end
end
