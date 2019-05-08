class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params(:title, :content))
    @post.save
    redirect_to post_path(@post)
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  def increase_likes
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to post_path(@post)
  end


  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
