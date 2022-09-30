class ReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(review_params)
    @review.user_id == current_user.id
    if @review.save
      redirect_to post_reviews_path(@review.post)
    else
      @post = Post.find(params[:id])
      render "posts/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:post_id, :score, :content)
  end
end