module Account
  class bookingsController < Account::Base

    def index
      @bookings = current_user.bookings.all
    end

    def show

    end

    def new
      @booking = current_user.bookings.build
    end

    def create
      @booking = @exchange.bookings.build(booking_params)
    end

    private

      def booking_params
        params.require(:booking).permit(:meeting_date, :currency_variable, :status, :message)
      end
  end
end

