require 'test_helper'

class StagelevelsControllerTest < ActionController::TestCase
  setup do
    @stagelevel = stagelevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stagelevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stagelevel" do
    assert_difference('Stagelevel.count') do
      post :create, stagelevel: { ammount: @stagelevel.ammount, order: @stagelevel.order, rate: @stagelevel.rate }
    end

    assert_redirected_to stagelevel_path(assigns(:stagelevel))
  end

  test "should show stagelevel" do
    get :show, id: @stagelevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stagelevel
    assert_response :success
  end

  test "should update stagelevel" do
    patch :update, id: @stagelevel, stagelevel: { ammount: @stagelevel.ammount, order: @stagelevel.order, rate: @stagelevel.rate }
    assert_redirected_to stagelevel_path(assigns(:stagelevel))
  end

  test "should destroy stagelevel" do
    assert_difference('Stagelevel.count', -1) do
      delete :destroy, id: @stagelevel
    end

    assert_redirected_to stagelevels_path
  end
end
