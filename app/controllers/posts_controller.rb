class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @review = Review.new
  end
end

