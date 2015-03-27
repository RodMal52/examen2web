require 'test_helper'

class SubforumsControllerTest < ActionController::TestCase
  setup do
    @subforum = subforums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subforums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subforum" do
    assert_difference('Subforum.count') do
      post :create, subforum: { title: @subforum.title }
    end

    assert_redirected_to subforum_path(assigns(:subforum))
  end

  test "should show subforum" do
    get :show, id: @subforum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subforum
    assert_response :success
  end

  test "should update subforum" do
    patch :update, id: @subforum, subforum: { title: @subforum.title }
    assert_redirected_to subforum_path(assigns(:subforum))
  end

  test "should destroy subforum" do
    assert_difference('Subforum.count', -1) do
      delete :destroy, id: @subforum
    end

    assert_redirected_to subforums_path
  end
end
