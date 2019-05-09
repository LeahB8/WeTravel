class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.save
    redirect_to post_path(@comment.post_id)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @comment.save
    redirect_to comment_path(@comment)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
