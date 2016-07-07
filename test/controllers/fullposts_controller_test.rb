require 'test_helper'

class FullpostsControllerTest < ActionController::TestCase
  setup do
    @fullpost = fullposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fullposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fullpost" do
    assert_difference('Fullpost.count') do
      post :create, fullpost: { author: @fullpost.author, body: @fullpost.body, tag: @fullpost.tag, title: @fullpost.title }
    end

    assert_redirected_to fullpost_path(assigns(:fullpost))
  end

  test "should show fullpost" do
    get :show, id: @fullpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fullpost
    assert_response :success
  end

  test "should update fullpost" do
    patch :update, id: @fullpost, fullpost: { author: @fullpost.author, body: @fullpost.body, tag: @fullpost.tag, title: @fullpost.title }
    assert_redirected_to fullpost_path(assigns(:fullpost))
  end

  test "should destroy fullpost" do
    assert_difference('Fullpost.count', -1) do
      delete :destroy, id: @fullpost
    end

    assert_redirected_to fullposts_path
  end
end
