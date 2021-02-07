class ReviewsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.author = current_user
    @review.save
  end

  def update
    @review = Review.find(params[:id])
    @review.update(params[:review])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
