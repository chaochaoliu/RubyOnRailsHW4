class PostsController < ApplicationController
  before_action :set_category, only: [:show, :edit, :destroy, :update]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(category_params)

    respond_to do |format|
      if @post.save
        format.html {redirect_to @category, notice: 'Post was succefully saved.'}
        format.json {render :show, status: :created, location: @post}
      else
        format.html {render :new}
        format.json {render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html {redirect_to @category, notice: 'Post was succefully updated.'}
        format.json {render :show, status: :ok, location: @post}
      else
        format.html {render :new }
        format.json {render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html {redirect_to posts_url notice: 'Post was succefully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
    def set_category
      @post = Post.find(params[:id])
    end

    def category_params
      params.require(:post).permit(:name)
    end
end
