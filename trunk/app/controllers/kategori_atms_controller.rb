class KategoriAtmsController < ApplicationController
  layout "layouts/admin"
  # GET /kategori_atms
  # GET /kategori_atms.json
  def index
    @kategori_atms = KategoriAtm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kategori_atms }
    end
  end

  # GET /kategori_atms/1
  # GET /kategori_atms/1.json
  def show
    @kategori_atm = KategoriAtm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kategori_atm }
    end
  end

  # GET /kategori_atms/new
  # GET /kategori_atms/new.json
  def new
    @kategori_atm = KategoriAtm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kategori_atm }
    end
  end

  # GET /kategori_atms/1/edit
  def edit
    @kategori_atm = KategoriAtm.find(params[:id])
  end

  # POST /kategori_atms
  # POST /kategori_atms.json
  def create
    @kategori_atm = KategoriAtm.new(params[:kategori_atm])

    respond_to do |format|
      if @kategori_atm.save
        format.html { redirect_to @kategori_atm, notice: 'Kategori atm was successfully created.' }
        format.json { render json: @kategori_atm, status: :created, location: @kategori_atm }
      else
        format.html { render action: "new" }
        format.json { render json: @kategori_atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kategori_atms/1
  # PUT /kategori_atms/1.json
  def update
    @kategori_atm = KategoriAtm.find(params[:id])

    respond_to do |format|
      if @kategori_atm.update_attributes(params[:kategori_atm])
        format.html { redirect_to @kategori_atm, notice: 'Kategori atm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kategori_atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategori_atms/1
  # DELETE /kategori_atms/1.json
  def destroy
    @kategori_atm = KategoriAtm.find(params[:id])
    @kategori_atm.destroy

    respond_to do |format|
      format.html { redirect_to kategori_atms_url }
      format.json { head :no_content }
    end
  end
end
