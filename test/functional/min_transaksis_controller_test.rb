require 'test_helper'

class MinTransaksisControllerTest < ActionController::TestCase
  setup do
    @min_transaksi = min_transaksis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:min_transaksis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create min_transaksi" do
    assert_difference('MinTransaksi.count') do
      post :create, min_transaksi: {  }
    end

    assert_redirected_to min_transaksi_path(assigns(:min_transaksi))
  end

  test "should show min_transaksi" do
    get :show, id: @min_transaksi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @min_transaksi
    assert_response :success
  end

  test "should update min_transaksi" do
    put :update, id: @min_transaksi, min_transaksi: {  }
    assert_redirected_to min_transaksi_path(assigns(:min_transaksi))
  end

  test "should destroy min_transaksi" do
    assert_difference('MinTransaksi.count', -1) do
      delete :destroy, id: @min_transaksi
    end

    assert_redirected_to min_transaksis_path
  end
end
