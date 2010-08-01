class KindsController < ApplicationController
  
  before_filter :login_required
  before_filter :is_admin
  
  def index
    @kinds = Kind.all
  end

  def show
    @kind = Kind.find(params[:id])
  end

  def new
    @kind = Kind.new
  end
  
  def create
    @kind = Kind.new(params[:kind])
    if @kind.save
      flash[:notice] = "Job Type Saved!"
      redirect_to kinds_path
    else
      flash[:error] = "Job Type failed to save"
      redirect_to new_kind_path
    end
  end

  def edit
  end

end
