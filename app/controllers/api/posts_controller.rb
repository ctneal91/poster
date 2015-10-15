class Api::PostsController < ApplicationController

  before_action do
    request.format = :json
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new params.require(:post).permit(:title, :body)
    if @post.save
      render status: 201, json: @post
    else
      render status: 422, json: @post.errors
    end
  end

  def update
    @post = Post.find params[:id]
    if @post.update params.require(:post).permit(:title, :body)
      render status: 201, json: @post
    else
      render status: 422, json: @post
    end
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to '/api/posts'
  end
end
