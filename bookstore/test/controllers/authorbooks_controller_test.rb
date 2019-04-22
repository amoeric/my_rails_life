require 'test_helper'

class AuthorbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorbook = authorbooks(:one)
  end

  test "should get index" do
    get authorbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_authorbook_url
    assert_response :success
  end

  test "should create authorbook" do
    assert_difference('Authorbook.count') do
      post authorbooks_url, params: { authorbook: { author_id: @authorbook.author_id, book_id: @authorbook.book_id } }
    end

    assert_redirected_to authorbook_url(Authorbook.last)
  end

  test "should show authorbook" do
    get authorbook_url(@authorbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorbook_url(@authorbook)
    assert_response :success
  end

  test "should update authorbook" do
    patch authorbook_url(@authorbook), params: { authorbook: { author_id: @authorbook.author_id, book_id: @authorbook.book_id } }
    assert_redirected_to authorbook_url(@authorbook)
  end

  test "should destroy authorbook" do
    assert_difference('Authorbook.count', -1) do
      delete authorbook_url(@authorbook)
    end

    assert_redirected_to authorbooks_url
  end
end
