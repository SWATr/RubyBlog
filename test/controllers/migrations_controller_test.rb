require 'test_helper'

class MigrationsControllerTest < ActionController::TestCase
  setup do
    @migration = migrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:migrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create migration" do
    assert_difference('Migration.count') do
      post :create, migration: { add_admin_to_users: @migration.add_admin_to_users, admin: @migration.admin }
    end

    assert_redirected_to migration_path(assigns(:migration))
  end

  test "should show migration" do
    get :show, id: @migration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @migration
    assert_response :success
  end

  test "should update migration" do
    patch :update, id: @migration, migration: { add_admin_to_users: @migration.add_admin_to_users, admin: @migration.admin }
    assert_redirected_to migration_path(assigns(:migration))
  end

  test "should destroy migration" do
    assert_difference('Migration.count', -1) do
      delete :destroy, id: @migration
    end

    assert_redirected_to migrations_path
  end
end
