require 'test_helper'

class KategoriAtmsControllerTest < ActionController::TestCase
  setup do
    @kategori_atm = kategori_atms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kategori_atms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kategori_atm" do
    assert_difference('KategoriAtm.count') do
      post :create, kategori_atm: {  }
    end

    assert_redirected_to kategori_atm_path(assigns(:kategori_atm))
  end

  test "should show kategori_atm" do
    get :show, id: @kategori_atm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kategori_atm
    assert_response :success
  end

  test "should update kategori_atm" do
    put :update, id: @kategori_atm, kategori_atm: {  }
    assert_redirected_to kategori_atm_path(assigns(:kategori_atm))
  end

  test "should destroy kategori_atm" do
    assert_difference('KategoriAtm.count', -1) do
      delete :destroy, id: @kategori_atm
    end

    assert_redirected_to kategori_atms_path
  end
end
