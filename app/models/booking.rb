class Booking < ActiveRecord::Base
  extend Enumerize

  belongs_to :exchange
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"

  validates_presence_of :buyer, :exchange, :status

  enumerize :status, in: [:checkout, :pending, :confirmed, :canceled], default: :checkout

end
