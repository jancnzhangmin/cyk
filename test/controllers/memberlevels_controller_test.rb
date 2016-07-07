require 'test_helper'

class MemberlevelsControllerTest < ActionController::TestCase
  setup do
    @memberlevel = memberlevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memberlevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memberlevel" do
    assert_difference('Memberlevel.count') do
      post :create, memberlevel: { name: @memberlevel.name, quota: @memberlevel.quota }
    end

    assert_redirected_to memberlevel_path(assigns(:memberlevel))
  end

  test "should show memberlevel" do
    get :show, id: @memberlevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @memberlevel
    assert_response :success
  end

  test "should update memberlevel" do
    patch :update, id: @memberlevel, memberlevel: { name: @memberlevel.name, quota: @memberlevel.quota }
    assert_redirected_to memberlevel_path(assigns(:memberlevel))
  end

  test "should destroy memberlevel" do
    assert_difference('Memberlevel.count', -1) do
      delete :destroy, id: @memberlevel
    end

    assert_redirected_to memberlevels_path
  end
end
