require 'test_helper'

class JugglesControllerTest < ActionController::TestCase
  setup do
    @juggle = juggles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juggles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juggle" do
    assert_difference('Juggle.count') do
      post :create, juggle: { difficulty: @juggle.difficulty, trick: @juggle.trick }
    end

    assert_redirected_to juggle_path(assigns(:juggle))
  end

  test "should show juggle" do
    get :show, id: @juggle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juggle
    assert_response :success
  end

  test "should update juggle" do
    patch :update, id: @juggle, juggle: { difficulty: @juggle.difficulty, trick: @juggle.trick }
    assert_redirected_to juggle_path(assigns(:juggle))
  end

  test "should destroy juggle" do
    assert_difference('Juggle.count', -1) do
      delete :destroy, id: @juggle
    end

    assert_redirected_to juggles_path
  end
end
