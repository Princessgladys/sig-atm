require 'test_helper'

class AtmsControllerTest < ActionController::TestCase
  setup do
    @atm = atms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atm" do
    assert_difference('Atm.count') do
      post :create, atm: { bank_id: @atm.bank_id, jumlah_tarik_id: @atm.jumlah_tarik_id, lat: @atm.lat, lng: @atm.lng, lokasi_atm_id: @atm.lokasi_atm_id, nama_atm: @atm.nama_atm }
    end

    assert_redirected_to atm_path(assigns(:atm))
  end

  test "should show atm" do
    get :show, id: @atm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atm
    assert_response :success
  end

  test "should update atm" do
    put :update, id: @atm, atm: { bank_id: @atm.bank_id, jumlah_tarik_id: @atm.jumlah_tarik_id, lat: @atm.lat, lng: @atm.lng, lokasi_atm_id: @atm.lokasi_atm_id, nama_atm: @atm.nama_atm }
    assert_redirected_to atm_path(assigns(:atm))
  end

  test "should destroy atm" do
    assert_difference('Atm.count', -1) do
      delete :destroy, id: @atm
    end

    assert_redirected_to atms_path
  end
end
