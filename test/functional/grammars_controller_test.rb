require 'test_helper'

class GrammarsControllerTest < ActionController::TestCase
  setup do
    @grammar = grammars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grammars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grammar" do
    assert_difference('Grammar.count') do
      post :create, grammar: @grammar.attributes
    end

    assert_redirected_to grammar_path(assigns(:grammar))
  end

  test "should show grammar" do
    get :show, id: @grammar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grammar
    assert_response :success
  end

  test "should update grammar" do
    put :update, id: @grammar, grammar: @grammar.attributes
    assert_redirected_to grammar_path(assigns(:grammar))
  end

  test "should destroy grammar" do
    assert_difference('Grammar.count', -1) do
      delete :destroy, id: @grammar
    end

    assert_redirected_to grammars_path
  end
end
