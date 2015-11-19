class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :destroy, :update]
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html {redirect_to @category, notice: 'Category was succefully saved.'}
        format.json {render :show, status: :created, location: @category}
      else
        format.html {render :new}
        format.json {render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html {redirect_to @category, notice: 'Category was succefully updated.'}
        format.json {render :show, status: :ok, location: @category}
      else
        format.html {render :new }
        format.json {render json: @catigory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html {redirect_to categories_url notice: 'Category was succefully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
