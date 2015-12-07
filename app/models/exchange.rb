class Exchange < ActiveRecord::Base
  extend Enumerize

  belongs_to :seller, class_name: "User", foreign_key: "seller_id"

  has_one :booking, dependent: :destroy

  enumerize :pair_currency, in: [:EUR_USD, :EUR_HKD, :EUR_GBP]

  validates_presence_of :title, :amount, :seller

end
