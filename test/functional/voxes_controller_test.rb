require 'test_helper'

class VoxesControllerTest < ActionController::TestCase
  setup do
    @vox = voxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vox" do
    assert_difference('Vox.count') do
      post :create, vox: @vox.attributes
    end

    assert_redirected_to vox_path(assigns(:vox))
  end

  test "should show vox" do
    get :show, id: @vox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vox
    assert_response :success
  end

  test "should update vox" do
    put :update, id: @vox, vox: @vox.attributes
    assert_redirected_to vox_path(assigns(:vox))
  end

  test "should destroy vox" do
    assert_difference('Vox.count', -1) do
      delete :destroy, id: @vox
    end

    assert_redirected_to voxes_path
  end
end
