class JumlahTariksController < ApplicationController
  # GET /jumlah_tariks
  # GET /jumlah_tariks.json
  def index
    @jumlah_tariks = JumlahTarik.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jumlah_tariks }
    end
  end

  # GET /jumlah_tariks/1
  # GET /jumlah_tariks/1.json
  def show
    @jumlah_tarik = JumlahTarik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jumlah_tarik }
    end
  end

  # GET /jumlah_tariks/new
  # GET /jumlah_tariks/new.json
  def new
    @jumlah_tarik = JumlahTarik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jumlah_tarik }
    end
  end

  # GET /jumlah_tariks/1/edit
  def edit
    @jumlah_tarik = JumlahTarik.find(params[:id])
  end

  # POST /jumlah_tariks
  # POST /jumlah_tariks.json
  def create
    @jumlah_tarik = JumlahTarik.new(params[:jumlah_tarik])

    respond_to do |format|
      if @jumlah_tarik.save
        format.html { redirect_to @jumlah_tarik, notice: 'Jumlah tarik was successfully created.' }
        format.json { render json: @jumlah_tarik, status: :created, location: @jumlah_tarik }
      else
        format.html { render action: "new" }
        format.json { render json: @jumlah_tarik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jumlah_tariks/1
  # PUT /jumlah_tariks/1.json
  def update
    @jumlah_tarik = JumlahTarik.find(params[:id])

    respond_to do |format|
      if @jumlah_tarik.update_attributes(params[:jumlah_tarik])
        format.html { redirect_to @jumlah_tarik, notice: 'Jumlah tarik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jumlah_tarik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jumlah_tariks/1
  # DELETE /jumlah_tariks/1.json
  def destroy
    @jumlah_tarik = JumlahTarik.find(params[:id])
    @jumlah_tarik.destroy

    respond_to do |format|
      format.html { redirect_to jumlah_tariks_url }
      format.json { head :no_content }
    end
  end
end
