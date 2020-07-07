require 'test_helper'

class UpdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get updates_index_url
    assert_response :success
  end

  test "should get show" do
    get updates_show_url
    assert_response :success
  end

  test "should get edit" do
    get updates_edit_url
    assert_response :success
  end

  test "should get update" do
    get updates_update_url
    assert_response :success
  end

end
