require 'test_helper'

class UnknownsControllerTest < ActionController::TestCase
  setup do
    @unknown = unknowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unknowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unknown" do
    assert_difference('Unknown.count') do
      post :create, :unknown => @unknown.attributes
    end

    assert_redirected_to unknown_path(assigns(:unknown))
  end

  test "should show unknown" do
    get :show, :id => @unknown.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @unknown.to_param
    assert_response :success
  end

  test "should update unknown" do
    put :update, :id => @unknown.to_param, :unknown => @unknown.attributes
    assert_redirected_to unknown_path(assigns(:unknown))
  end

  test "should destroy unknown" do
    assert_difference('Unknown.count', -1) do
      delete :destroy, :id => @unknown.to_param
    end

    assert_redirected_to unknowns_path
  end
end
