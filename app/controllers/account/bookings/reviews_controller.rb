module Account
  module Exchanges
    class ReviewsController < Account::Base

      before_action :find_exchange, only: [ :new, :create ]

      def new
        @review = Review.new
      end

      def create
        @review = @exchange.reviews.build(review_params)
        @review.save
      end

      private

      def review_params
        params.require(:review).permit(:rating, :comment)
      end
      def find_exchange
        @exchange = Exchange.find(params[:exchange_id])
      end
    end
  end
end
