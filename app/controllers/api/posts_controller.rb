class Api::PostsController < ApplicationController
  def index
    @Posts = Post.all
  end

  def show
    @Post = Post.find params[:id]
  end
end
