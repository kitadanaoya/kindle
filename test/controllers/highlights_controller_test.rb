require 'test_helper'

class HighlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get highlights_index_url
    assert_response :success
  end

  test "should get show" do
    get highlights_show_url
    assert_response :success
  end

  test "should get new" do
    get highlights_new_url
    assert_response :success
  end

  test "should get create" do
    get highlights_create_url
    assert_response :success
  end

  test "should get edit" do
    get highlights_edit_url
    assert_response :success
  end

  test "should get update" do
    get highlights_update_url
    assert_response :success
  end

  test "should get destroy" do
    get highlights_destroy_url
    assert_response :success
  end

end
