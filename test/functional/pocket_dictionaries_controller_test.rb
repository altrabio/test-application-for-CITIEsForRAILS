require 'test_helper'

class PocketDictionariesControllerTest < ActionController::TestCase
  setup do
    @pocket_dictionary = pocket_dictionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocket_dictionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket_dictionary" do
    assert_difference('PocketDictionary.count') do
      post :create, :pocket_dictionary => @pocket_dictionary.attributes
    end

    assert_redirected_to pocket_dictionary_path(assigns(:pocket_dictionary))
  end

  test "should show pocket_dictionary" do
    get :show, :id => @pocket_dictionary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pocket_dictionary.to_param
    assert_response :success
  end

  test "should update pocket_dictionary" do
    put :update, :id => @pocket_dictionary.to_param, :pocket_dictionary => @pocket_dictionary.attributes
    assert_redirected_to pocket_dictionary_path(assigns(:pocket_dictionary))
  end

  test "should destroy pocket_dictionary" do
    assert_difference('PocketDictionary.count', -1) do
      delete :destroy, :id => @pocket_dictionary.to_param
    end

    assert_redirected_to pocket_dictionaries_path
  end
end
