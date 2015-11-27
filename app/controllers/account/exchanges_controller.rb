module Account
  class ExchangesController < ApplicationController
    before_action :authenticate_user!

    def index
      @exchanges  = Exchange.all
    end

    def show
      @exchange = Exchange.find(params[:id])
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
      params.require(:exchange).permit(:title, :amount)
    end

  end
end
