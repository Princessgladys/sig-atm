class HomeController < ApplicationController
  def index
  	bank_id = params[:bank_id].blank? ? 1 : params[:bank_id]

    @atms = Atm.select("atms.*, banks.nama_bank, min_transaksis.nominal, lokasi_atms.nama_lokasi, kategori_atms.nama_kategori")
						   .joins(:bank, :min_transaksi, :lokasi_atm, :kategori_atm).where("atms.bank_id=?", bank_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atms }
    end
  end
end
