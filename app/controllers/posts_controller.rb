class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_param)
    respond_to do |format|
      if @post.save
        format.html{ redirect_to @post, notice: 'post was successfly created'}
        format.json {render :show, status: created, location: @post}
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
  end

  def post_param
    params.require(:post).permit(:title_post, :category)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
