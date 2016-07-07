require 'test_helper'

class PeosControllerTest < ActionController::TestCase
  setup do
    @peo = peos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peo" do
    assert_difference('Peo.count') do
      post :create, peo: { bankaccount: @peo.bankaccount, bankcard: @peo.bankcard, businesslicense: @peo.businesslicense, contact: @peo.contact, contactsex: @peo.contactsex, contacttel: @peo.contacttel, credit: @peo.credit, memberlevel_id: @peo.memberlevel_id, name: @peo.name, qrcode: @peo.qrcode, sex: @peo.sex, status: @peo.status, tel: @peo.tel, upid: @peo.upid, wechat: @peo.wechat }
    end

    assert_redirected_to peo_path(assigns(:peo))
  end

  test "should show peo" do
    get :show, id: @peo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peo
    assert_response :success
  end

  test "should update peo" do
    patch :update, id: @peo, peo: { bankaccount: @peo.bankaccount, bankcard: @peo.bankcard, businesslicense: @peo.businesslicense, contact: @peo.contact, contactsex: @peo.contactsex, contacttel: @peo.contacttel, credit: @peo.credit, memberlevel_id: @peo.memberlevel_id, name: @peo.name, qrcode: @peo.qrcode, sex: @peo.sex, status: @peo.status, tel: @peo.tel, upid: @peo.upid, wechat: @peo.wechat }
    assert_redirected_to peo_path(assigns(:peo))
  end

  test "should destroy peo" do
    assert_difference('Peo.count', -1) do
      delete :destroy, id: @peo
    end

    assert_redirected_to peos_path
  end
end
