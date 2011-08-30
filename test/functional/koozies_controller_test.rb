require 'test_helper'

class KooziesControllerTest < ActionController::TestCase
  setup do
    @koozy = koozies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:koozies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koozy" do
    assert_difference('Koozy.count') do
      post :create, :koozy => @koozy.attributes
    end

    assert_redirected_to koozy_path(assigns(:koozy))
  end

  test "should show koozy" do
    get :show, :id => @koozy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @koozy.to_param
    assert_response :success
  end

  test "should update koozy" do
    put :update, :id => @koozy.to_param, :koozy => @koozy.attributes
    assert_redirected_to koozy_path(assigns(:koozy))
  end

  test "should destroy koozy" do
    assert_difference('Koozy.count', -1) do
      delete :destroy, :id => @koozy.to_param
    end

    assert_redirected_to koozies_path
  end
end
