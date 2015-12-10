module Account
  class ExchangesController < Account::Base

    def index
      @exchanges  = Exchange.all

      if params[:base_currency].presence
        @exchanges = @exchanges.where(base_currency_id: Currency.where(name: params[:base_currency]))
        if @exchanges.empty?
          flash[:notice] = "No exchange available in this city !"
          redirect_to account_exchanges_path
        end
      end

      if params[:variable_currency].presence
        @exchanges = @exchanges.where(variable_currency_id: Currency.where(name: params[:variable_currency]))
        if @exchanges.empty?
          flash[:notice] = "No exchange available in this city !"
          redirect_to account_exchanges_path
        end
      end

      if params[:city].presence
        @exchanges = @exchanges.near(params[:city], 20)

        if @exchanges.empty?
          flash[:notice] = "No exchange available in this city !"
          redirect_to account_exchanges_path
        end
      end

      @search_base_currency = []
      @exchanges.each do |exchange|
        @search_base_currency << exchange.base_currency.name
      end

      @search_base_currency = @search_base_currency.uniq

      @search_variable_currency = []
      @exchanges.each do |exchange|
        @search_variable_currency << exchange.variable_currency.name
      end

      @search_variable_currency = @search_variable_currency.uniq

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
      params.require(:exchange).permit(:title, :amount, :base_currency, :variable_currency, :exchange_amount, :city)
    end

  end
end
