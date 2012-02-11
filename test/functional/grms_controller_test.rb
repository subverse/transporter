require 'test_helper'

class GrmsControllerTest < ActionController::TestCase
  setup do
    @grm = grms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm" do
    assert_difference('Grm.count') do
      post :create, grm: @grm.attributes
    end

    assert_redirected_to grm_path(assigns(:grm))
  end

  test "should show grm" do
    get :show, id: @grm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm
    assert_response :success
  end

  test "should update grm" do
    put :update, id: @grm, grm: @grm.attributes
    assert_redirected_to grm_path(assigns(:grm))
  end

  test "should destroy grm" do
    assert_difference('Grm.count', -1) do
      delete :destroy, id: @grm
    end

    assert_redirected_to grms_path
  end
end
