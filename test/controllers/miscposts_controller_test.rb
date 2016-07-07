require 'test_helper'

class MiscpostsControllerTest < ActionController::TestCase
  setup do
    @miscpost = miscposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscpost" do
    assert_difference('Miscpost.count') do
      post :create, miscpost: { body: @miscpost.body, tag: @miscpost.tag, title: @miscpost.title }
    end

    assert_redirected_to miscpost_path(assigns(:miscpost))
  end

  test "should show miscpost" do
    get :show, id: @miscpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscpost
    assert_response :success
  end

  test "should update miscpost" do
    patch :update, id: @miscpost, miscpost: { body: @miscpost.body, tag: @miscpost.tag, title: @miscpost.title }
    assert_redirected_to miscpost_path(assigns(:miscpost))
  end

  test "should destroy miscpost" do
    assert_difference('Miscpost.count', -1) do
      delete :destroy, id: @miscpost
    end

    assert_redirected_to miscposts_path
  end
end
