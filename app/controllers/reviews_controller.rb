class ReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(review_params)
    @review.user_id == current_user.id
  end

  private
  def review_params
    params.require(:review).permit(:post_id, :score, :content)
  end
end