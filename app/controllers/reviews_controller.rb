class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @user = User.find(params[:user_id])
  end
  def create
    @review = Review.new(review_params)
    @review.rating = params[:rating]
    @review.booking = Booking.find(params[:review][:booking_id])
    raise
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end

