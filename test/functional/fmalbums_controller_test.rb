require 'test_helper'

class FmalbumsControllerTest < ActionController::TestCase
  setup do
    @fmalbum = fmalbums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fmalbums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fmalbum" do
    assert_difference('Fmalbum.count') do
      post :create, fmalbum: @fmalbum.attributes
    end

    assert_redirected_to fmalbum_path(assigns(:fmalbum))
  end

  test "should show fmalbum" do
    get :show, id: @fmalbum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fmalbum
    assert_response :success
  end

  test "should update fmalbum" do
    put :update, id: @fmalbum, fmalbum: @fmalbum.attributes
    assert_redirected_to fmalbum_path(assigns(:fmalbum))
  end

  test "should destroy fmalbum" do
    assert_difference('Fmalbum.count', -1) do
      delete :destroy, id: @fmalbum
    end

    assert_redirected_to fmalbums_path
  end
end
