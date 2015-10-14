class Api::PostsController < ApplicationController

  before_action do
    request.format = :json
  end
  
  def index
    @Posts = Post.all
  end

  def show
    @Post = Post.find params[:id]
  end

  def create
    @Post = Post.new.require(:post).permit(:title, :body)
    if @Post.save
      redirect_to '/api/posts'
    end
  end

  def edit
    @Post = Post.find params[:id]
  end

  def change
    @Post = Post.find params[:id]
  end

  def delete
    @Post = Post.find params[:id]
  end
end
