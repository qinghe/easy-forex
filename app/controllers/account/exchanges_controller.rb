module Account
  class ExchangesController < Account::Base

    def index
      @exchanges  = Exchange.all
    end

    def show
      @exchange = Exchange.find(params[:id])
      @exchange.get_pair_currency_rate
      @rate = @exchange.rate
      @amount = @exchange.amount
      @exchange_amount = @exchange.exchange_amount
    end

    def new
      @exchange = Exchange.new
    end

    def create
      @exchange = current_user.exchanges.build(exchange_params)
      @exchange.save
      redirect_to account_exchanges_path
    end

    def edit
      @exchange = Exchange.find(params[:id])
    end

    def update
      @exchange = Exchange.find(params[:id])
      @exchange.update(params[:exchange])
    end

    private

    def exchange_params
      params.require(:exchange).permit(:title, :amount, :base_currency, :variable_currency, :exchange_amount, :city)
    end

  end
end
