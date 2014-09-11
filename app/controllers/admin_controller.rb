class AdminController < ApplicationController
  before_filter :authenticate, :authenticate_admin
  
  def index
  end
end
