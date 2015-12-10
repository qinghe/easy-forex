class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @reviewed_user = User.find(params[:user_id])
  end
  def create
    @review = Review.new(review_params)
    @review.rating = params[:rating]
    @review.reviewed_user = User.find(params[:user_id])
    @review.reviewer_user = current_user
    if @review.save
      flash[:notice] = 'Your review has been published'
      redirect_to user_profile_path(@review.reviewed_user.id)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end

