class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :destroy, :update]
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
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html {redirect_to @post, notice: 'Post was succefully saved.'}
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
        format.html {redirect_to @post, notice: 'Post was succefully updated.'}
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
      format.html {redirect_to categories_path notice: 'Post was succefully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :category_id, :user_id, :published)
    end
end
