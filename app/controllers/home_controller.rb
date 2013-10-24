class HomeController < ApplicationController
  def index
    @lokasi_atms = LokasiAtm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lokasi_atms }
    end
  end
end
