class LokasiAtmsController < ApplicationController
  layout "layouts/admin"
  before_filter :authenticate, :authenticate_admin
  # GET /lokasi_atms
  # GET /lokasi_atms.json
  def index
    @lokasi_atms = LokasiAtm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lokasi_atms }
    end
  end

  # GET /lokasi_atms/1
  # GET /lokasi_atms/1.json
  def show
    @lokasi_atm = LokasiAtm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lokasi_atm }
    end
  end

  # GET /lokasi_atms/new
  # GET /lokasi_atms/new.json
  def new
    @lokasi_atm = LokasiAtm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lokasi_atm }
    end
  end

  # GET /lokasi_atms/1/edit
  def edit
    @lokasi_atm = LokasiAtm.find(params[:id])
  end

  # POST /lokasi_atms
  # POST /lokasi_atms.json
  def create
    @lokasi_atm = LokasiAtm.new(params[:lokasi_atm])

    respond_to do |format|
      if @lokasi_atm.save
        format.html { redirect_to @lokasi_atm, notice: 'Lokasi atm was successfully created.' }
        format.json { render json: @lokasi_atm, status: :created, location: @lokasi_atm }
      else
        format.html { render action: "new" }
        format.json { render json: @lokasi_atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lokasi_atms/1
  # PUT /lokasi_atms/1.json
  def update
    @lokasi_atm = LokasiAtm.find(params[:id])

    respond_to do |format|
      if @lokasi_atm.update_attributes(params[:lokasi_atm])
        format.html { redirect_to @lokasi_atm, notice: 'Lokasi atm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lokasi_atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokasi_atms/1
  # DELETE /lokasi_atms/1.json
  def destroy
    @lokasi_atm = LokasiAtm.find(params[:id])
    @lokasi_atm.destroy

    respond_to do |format|
      format.html { redirect_to lokasi_atms_url }
      format.json { head :no_content }
    end
  end
end
