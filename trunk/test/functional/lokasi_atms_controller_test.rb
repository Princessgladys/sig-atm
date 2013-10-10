require 'test_helper'

class LokasiAtmsControllerTest < ActionController::TestCase
  setup do
    @lokasi_atm = lokasi_atms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lokasi_atms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lokasi_atm" do
    assert_difference('LokasiAtm.count') do
      post :create, lokasi_atm: { bank_id: @lokasi_atm.bank_id, jumlah_tarik_id: @lokasi_atm.jumlah_tarik_id, lat: @lokasi_atm.lat, lng: @lokasi_atm.lng, nama_atm: @lokasi_atm.nama_atm }
    end

    assert_redirected_to lokasi_atm_path(assigns(:lokasi_atm))
  end

  test "should show lokasi_atm" do
    get :show, id: @lokasi_atm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lokasi_atm
    assert_response :success
  end

  test "should update lokasi_atm" do
    put :update, id: @lokasi_atm, lokasi_atm: { bank_id: @lokasi_atm.bank_id, jumlah_tarik_id: @lokasi_atm.jumlah_tarik_id, lat: @lokasi_atm.lat, lng: @lokasi_atm.lng, nama_atm: @lokasi_atm.nama_atm }
    assert_redirected_to lokasi_atm_path(assigns(:lokasi_atm))
  end

  test "should destroy lokasi_atm" do
    assert_difference('LokasiAtm.count', -1) do
      delete :destroy, id: @lokasi_atm
    end

    assert_redirected_to lokasi_atms_path
  end
end
