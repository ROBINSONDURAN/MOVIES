require "test_helper"

class DocsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get docs_index_url
    assert_response :success
  end

  test "should get crete" do
    get docs_crete_url
    assert_response :success
  end

  test "should get new" do
    get docs_new_url
    assert_response :success
  end
end
