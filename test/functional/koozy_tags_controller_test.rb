require 'test_helper'

class KoozyTagsControllerTest < ActionController::TestCase
  setup do
    @koozy_tag = koozy_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:koozy_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koozy_tag" do
    assert_difference('KoozyTag.count') do
      post :create, :koozy_tag => @koozy_tag.attributes
    end

    assert_redirected_to koozy_tag_path(assigns(:koozy_tag))
  end

  test "should show koozy_tag" do
    get :show, :id => @koozy_tag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @koozy_tag.to_param
    assert_response :success
  end

  test "should update koozy_tag" do
    put :update, :id => @koozy_tag.to_param, :koozy_tag => @koozy_tag.attributes
    assert_redirected_to koozy_tag_path(assigns(:koozy_tag))
  end

  test "should destroy koozy_tag" do
    assert_difference('KoozyTag.count', -1) do
      delete :destroy, :id => @koozy_tag.to_param
    end

    assert_redirected_to koozy_tags_path
  end
end
