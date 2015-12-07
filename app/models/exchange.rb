class Exchange < ActiveRecord::Base

  belongs_to :seller, class_name: "User", foreign_key: "seller_id"

  belongs_to :base_currency, class_name: "Currency", foreign_key: "base_currency_id"
  belongs_to :variable_currency, class_name: "Currency", foreign_key: "variable_currency_id"

  has_one :booking, dependent: :destroy

  validates_presence_of :title, :amount, :seller

  def get_pair_currency_rate
    yahoo_client = YahooFinance::Client.new
    self.rate = yahoo_client.quotes(["#{self.base_currency.code}#{self.variable_currency.code}=X"], [:ask, :bid, :last_trade_price], { raw: false })
    calculate_exchange_amount
  end

  private

  def calculate_exchange_amount
    self.exchange_amout = self.amount * self.rate
  end
end
