class Booking < ActiveRecord::Base
  extend Enumerize

  belongs_to :exchange
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"

  validates_presence_of :buyer, :exchange, :meeting_date, :status

  enumerize :status, in: [:checkout, :pending, :confirmed, :canceled, :done], default: :checkout

  validate :date_must_be_in_range, if: :new_record?

  private

  def date_must_be_in_range
    @exchange = Exchange.where(exchange_id: exchange_id)
    if self.meeting_date <= @exchange.start_date || @exchange.end_date <= sef.meeting_date
      errors.add(:meeting_date, :invalid)
    end
  end

end
