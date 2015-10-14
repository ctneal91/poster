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
    @post = Post.new.require(:post).permit(:title, :body)
    if @Post.save
      redirect_to '/api/posts'
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def change
    @post = Post.find params[:id]
  end

  def delete
    @post = Post.find params[:id]
  end
end
