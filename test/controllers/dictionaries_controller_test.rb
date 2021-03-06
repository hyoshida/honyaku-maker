require 'test_helper'

class DictionariesControllerTest < ActionController::TestCase
  def valid_params
    FactoryGirl.attributes_for(:dictionary)
  end

  setup do
    @dictionary = FactoryGirl.create(:dictionary)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictionary" do
    assert_difference('Dictionary.count') do
      post :create, dictionary: valid_params
    end

    assert_redirected_to dictionary_path(assigns(:dictionary))
  end

  test "should show dictionary" do
    get :show, permalink: @dictionary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, permalink: @dictionary.to_param
    assert_response :success
  end

  test "should update dictionary" do
    patch :update, permalink: @dictionary.to_param, dictionary: valid_params
    assert_redirected_to dictionary_path(assigns(:dictionary))
  end

  test "should destroy dictionary" do
    assert_difference('Dictionary.count', -1) do
      delete :destroy, permalink: @dictionary.to_param
    end

    assert_redirected_to dictionaries_path
  end
end
