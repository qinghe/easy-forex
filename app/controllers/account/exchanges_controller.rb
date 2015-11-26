module Account
  class ExchangesController < Account::Base

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
      @exchange = Exchange.new(params[:exchange])
      @exchange.save
    end

    def edit
      @exchange = Exchange.find(params[:id])
    end

    def update
      @exchange = Exchange.find(params[:id])
      @exchange.update(params[:exchange])
    end

  end
end
