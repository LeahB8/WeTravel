class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to comment_path(@comment)
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
    params.require(:comment).permit(:content)
  end
end
