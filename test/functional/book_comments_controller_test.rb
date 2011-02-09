require 'test_helper'

class BookCommentsControllerTest < ActionController::TestCase
  setup do
    @book_comment = book_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_comment" do
    assert_difference('BookComment.count') do
      post :create, :book_comment => @book_comment.attributes
    end

    assert_redirected_to book_comment_path(assigns(:book_comment))
  end

  test "should show book_comment" do
    get :show, :id => @book_comment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @book_comment.to_param
    assert_response :success
  end

  test "should update book_comment" do
    put :update, :id => @book_comment.to_param, :book_comment => @book_comment.attributes
    assert_redirected_to book_comment_path(assigns(:book_comment))
  end

  test "should destroy book_comment" do
    assert_difference('BookComment.count', -1) do
      delete :destroy, :id => @book_comment.to_param
    end

    assert_redirected_to book_comments_path
  end
end
