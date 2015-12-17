module Account
  class BookingsController < Account::Base
    include Pundit

    before_action :find_exchange, only: [:new, :create]
    after_action :verify_authorized, except: [:index, :show]

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def index
      @bookings = current_user.bookings.all
    end

    def show
      @booking = current_user.bookings.where(status: :pending).find(params[:id])
    end

    def new
      @exchange = Exchange.find(params[:exchange_id])
      @booking = current_user.bookings.build

      authorize @booking
    end

    def create
      @exchange = Exchange.find(params[:exchange_id])
      @booking = @exchange.build_booking(booking_params)
      authorize @booking
      
      @booking.buyer = current_user
      @booking.status = :checkout
      if @booking.save
        redirect_to account_dashboard_path
      else
        render :new
      end
    end

    private

      def user_not_authorized
        flash[:alert] = "Sorry, no authorization"
        redirect_to(root_path)
      end

      def booking_params
        params.require(:booking).permit(:meeting_date, :message)
      end

      def find_exchange
        @exchange = Exchange.find(params[:exchange_id])
      end
  end
end
