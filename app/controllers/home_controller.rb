class HomeController < ApplicationController
  def index
    @atms = Atm.select("atms.*, banks.nama_bank, min_transaksis.nominal, lokasi_atms.nama_lokasi, kategori_atms.nama_kategori")
               .joins(:bank, :min_transaksi, :lokasi_atm, :kategori_atm)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atms }
    end
  end
end
