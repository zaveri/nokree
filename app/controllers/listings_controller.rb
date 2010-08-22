class ListingsController < ApplicationController
  def index
    order = params[:sort]
    @selected_categories = params[:categories]
    @categories = Category.find(:all)
    @listings = Listing.find(:all)
    @selected_categories = @categories.map{|category| category.name} if @selected_categories.blank?
  end
  
  def show
    @listing = Listing.find(params[:id])
  end
    
  def new
    @listing = Listing.new
    @preview = false
    @listing.build_company
    @listing.build_job
  end
  
  def create
    if params[:commit] == "Create"
      @listing = Listing.new(params[:listing])
      if @listing.save
        redirect_to(listing_path(@listing))
      else
        render(:action => :new)
      end
    else
      @listing = Listing.new(params[:listing])
      @preview = true
      render :action => :new
    end
  end
  
  def edit
    @listing = Listing.find(params[:id])
  end
    
  def update
    @listing = Listing.find(params[:id])
    @listing.update_attributes(params[:listing]) ? redirect_to(listing_path(@listing)) : render(:action => :new)
  end
  
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

	def search
	  if params[:search]
		  @listings = Listing.find_with_ferret(params[:search]).to_a
 	  else
 	    @listings = Listing.all
    end
 	end
 
  private
  
  def find_all_categories
    Category.find(:all)
  end


end
