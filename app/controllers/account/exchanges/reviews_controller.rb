module Account
  module Exchanges
    class ReviewsController < Account::Base

      def new
        @review = Review.new
      end

      def create
        @review = @exchange.reviews.build(review_params)
        @review.save
      end

    end
  end
end
