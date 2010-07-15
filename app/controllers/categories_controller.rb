class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Category created!"
      redirect_to categories_path
    else
      flash[:error] = "Category failed to be created"
      redirect_to new_category_path
    end
  end

  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Category updated"
      redirect_to category_path
    else
      falsh[:error] = "Category failed to be updated"
      redirect_to edit_category_path
    end
  end
  
end
