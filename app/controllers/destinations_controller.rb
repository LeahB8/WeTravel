class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Post.create(destination_params)
    redirect_to destination_path(@destination)
  end

  def edit
    @destination = Post.find(params[:id])
  end

  def update
    @destination = Post.find(params[:id])
    @destination.update(destination_params)
    @destination.save
    redirect_to destination_path(@destination)
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to destinations_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
