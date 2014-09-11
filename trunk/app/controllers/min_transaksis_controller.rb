class MinTransaksisController < ApplicationController
  layout "layouts/admin"
  before_filter :authenticate
  # GET /min_transaksis
  # GET /min_transaksis.json
  def index
    @min_transaksis = MinTransaksi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @min_transaksis }
    end
  end

  # GET /min_transaksis/1
  # GET /min_transaksis/1.json
  def show
    @min_transaksi = MinTransaksi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @min_transaksi }
    end
  end

  # GET /min_transaksis/new
  # GET /min_transaksis/new.json
  def new
    @min_transaksi = MinTransaksi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @min_transaksi }
    end
  end

  # GET /min_transaksis/1/edit
  def edit
    @min_transaksi = MinTransaksi.find(params[:id])
  end

  # POST /min_transaksis
  # POST /min_transaksis.json
  def create
    @min_transaksi = MinTransaksi.new(params[:min_transaksi])

    respond_to do |format|
      if @min_transaksi.save
        format.html { redirect_to @min_transaksi, notice: 'Min transaksi was successfully created.' }
        format.json { render json: @min_transaksi, status: :created, location: @min_transaksi }
      else
        format.html { render action: "new" }
        format.json { render json: @min_transaksi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /min_transaksis/1
  # PUT /min_transaksis/1.json
  def update
    @min_transaksi = MinTransaksi.find(params[:id])

    respond_to do |format|
      if @min_transaksi.update_attributes(params[:min_transaksi])
        format.html { redirect_to @min_transaksi, notice: 'Min transaksi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @min_transaksi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /min_transaksis/1
  # DELETE /min_transaksis/1.json
  def destroy
    @min_transaksi = MinTransaksi.find(params[:id])
    @min_transaksi.destroy

    respond_to do |format|
      format.html { redirect_to min_transaksis_url }
      format.json { head :no_content }
    end
  end
end
