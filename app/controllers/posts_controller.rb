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
    @post = current_user.posts.build(post_params)
    # byebug
    if @post.save
      flash[:success] = 'Your post has been created!'
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])

    if @post.update_attributes(post_params)
      flash[:success] = 'Your post has been updated!'
      redirect_to post_path(@post)
    else
      render 'edit'
    end
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

  def post_params
    params.require(:post).permit(:title, :content, :destination_id, :tags)
  end

end
