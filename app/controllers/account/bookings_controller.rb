module Account
  class BookingsController < Account::Base

    before_action :find_exchange, only: [:new, :create]

    def index
      @bookings = current_user.bookings.all
    end

    def show

    end

    def new
      @exchange = Exchange.find(params[:exchange_id])
      @booking = current_user.bookings.build
    end

    def create
      @exchange = Exchange.find(params[:exchange_id])
      @booking = @exchange.build_booking(booking_params)
      @booking.buyer = current_user
      if @booking.save
        redirect_to account_dashboard_path
      else
        render :new
      end
    end

    private

      def booking_params
        params.require(:booking).permit(:meeting_date, :message)
      end

      def find_exchange
        @exchange = Exchange.find(params[:exchange_id])
      end
  end
end

