class Booking < ActiveRecord::Base

  belongs_to :exchange
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"

  enumerize :status, in: [:checkout, :pending, :confirmed, :canceled], default: :checkout

end
