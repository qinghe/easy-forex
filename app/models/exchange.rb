class Exchange < ActiveRecord::Base

  include PgSearch

  belongs_to :seller, class_name: "User", foreign_key: "seller_id"

  belongs_to :base_currency, class_name: "Currency", foreign_key: "base_currency_id"
  belongs_to :variable_currency, class_name: "Currency", foreign_key: "variable_currency_id"

  has_one :booking, dependent: :destroy

  geocoded_by :city
  after_validation :geocode, if: :city_changed?

  validates_presence_of :amount, :seller, :city

  def self.update_rates
    self.all.each do |exchange|
      exchange.get_pair_currency_rate
    end
  end

  def get_pair_currency_rate
    yahoo_client = YahooFinance::Client.new
    rate = yahoo_client.quotes(["#{self.base_currency.code}#{self.variable_currency.code}=X"], [:last_trade_price], { raw: false }).first.last_trade_price.to_f
    self.update(rate: rate)
    calculate_exchange_amount
  end

  def calculate_exchange_amount
    self.exchange_amount = self.amount * self.rate
    self.update(exchange_amount: exchange_amount)
  end

  private



end
