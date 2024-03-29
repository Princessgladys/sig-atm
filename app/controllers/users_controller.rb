class UsersController < ApplicationController
  layout "layouts/admin"
  before_filter :authenticate, only: [:index, :show, :new, :edit, :destroy]
  before_filter :authenticate_admin, only: [:index, :show, :new, :edit, :destroy]
  # GET /users
  # GET /users.json
  def index
    # if current_user.user_role_id == 1
      @users = User.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
      end
    # else
    #   redirect_to home_path, alert: "Tidak bisa mengakses halaman ini."
    # end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def sign_up
    @user = User.new

    respond_to do |format|
      format.html { render layout: 'autorize' }
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User telah berhasil ditambahkan.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def registration
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Berhasil melakukan proses Sign up.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "sign_up", layout: "autorize" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, notice: 'User telah berhasil diubah.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User telah berhasil dihapus.' }
      format.json { head :no_content }
    end
  end
end
