class HomeController < ApplicationController
	before_filter :authenticate
	
  def index
    @atms = Atm.select("atms.*, banks.nama_bank, min_transaksis.nominal, lokasi_atms.nama_lokasi, kategori_atms.nama_kategori, users.nama_lengkap, users.user_role_id")
               .joins(:bank, :min_transaksi, :lokasi_atm, :kategori_atm, :user)
               .where("atms.is_approved =?", 1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atms }
    end
  end
end
