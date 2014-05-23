class AtmsController < ApplicationController
  layout "layouts/admin"
  # GET /atms
  # GET /atms.json
  def index
    if current_user.user_role_id == 1
      @atms = Atm.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @atms }
      end
    else
      redirect_to home_path, alert: "Tidak bisa mengakses halaman ini."
      # flash.now[:alert] = "Tidak bisa mengakses halaman ini."
    end
  end

  def index_atm_user
    @atms = Atm.where("atms.user_id =?", current_user.id)

    respond_to do |format|
      format.html { render layout: "application" }
      format.json { render json: @atms }
    end
  end

  # GET /atms/1
  # GET /atms/1.json
  def show
    @atm = Atm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js { render layout: false } # show.html.erb
      format.json { render json: @atm }
    end
  end

  # GET /atms/new
  # GET /atms/new.json
  def new
    @atm = Atm.new

    respond_to do |format|
      format.html # new.html.erb
      format.js { render layout: false }
      format.json { render json: @atm }
    end
  end

  def new_atm_user
    @atm = Atm.new

    respond_to do |format|
      format.html { render layout: "application" }
      format.json { render json: @atm }
    end
  end

  # GET /atms/1/edit
  def edit
    @atm = Atm.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @atm }
    end
  end

  def edit_atm_user
    @atm = Atm.find(params[:id])

    respond_to do |format|
      format.html { render layout: "application" }
      format.json { render json: @atm }
    end
  end

  # POST /atms
  # POST /atms.json
  def create
    @atm = Atm.new(params[:atm])

    respond_to do |format|
      if @atm.save
        format.html { redirect_to atms_path, notice: 'Atm was successfully created.' }
        format.json { render json: @atm, status: :created, location: @atm }
      else
        format.html { render action: "new" }
        format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_atm_user
    @atm = Atm.new(params[:atm])

    respond_to do |format|
      if @atm.save
        format.html { redirect_to index_atm_user_atms_path, notice: 'Atm was successfully created.' }
        # format.json { render json: @atm, status: :created, location: @atm }
      else
        format.html { render action: "new_atm_user" }
        # format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /atms/1
  # PUT /atms/1.json
  def update
    @atm = Atm.find(params[:id])

    respond_to do |format|
      if @atm.update_attributes(params[:atm])
        format.html { redirect_to atms_path, notice: 'Atm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_atm_user
    @atm = Atm.find(params[:id])

    respond_to do |format|
      if @atm.update_attributes(params[:atm])
        format.html { redirect_to index_atm_user_atms_path, notice: 'Atm was successfully updated.' }
        # format.json { head :no_content }
      else
        format.html { render action: "edit_atm_user" }
        # format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atms/1
  # DELETE /atms/1.json
  def destroy
    @atm = Atm.find(params[:id])
    @atm.destroy

    respond_to do |format|
      format.html { redirect_to atms_url }
      format.js { render layout: false }
      format.json { head :no_content }
    end
  end
end
