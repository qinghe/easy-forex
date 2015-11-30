class Exchange < ActiveRecord::Base
  extend Enumerize

  belongs_to :user, class_name: "User", foreign_key: "user_id"

  has_one :booking, dependent: :destroy

  enumerize :pair_currency, in: [:EUR_USD, :EUR_HKD, :EUR_GBP]

  validates_presence_of :title, :amount

end
