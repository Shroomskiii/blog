class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [ :edit, :update, :destroy]

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      flash[:notice] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    if @post.user_id == current_user&.id
      @post.destroy
      redirect_to posts_path
    end
  end



private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:cover_picture, :title, :summary, :body)
  end
end