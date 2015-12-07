class Exchange < ActiveRecord::Base

  belongs_to :seller, class_name: "User", foreign_key: "seller_id"

  belongs_to :base_currency, class_name: "Currency", foreign_key: "base_currency_id"
  belongs_to :variable_currency, class_name: "Currency", foreign_key: "base_currency_id"

  has_one :booking, dependent: :destroy

  validates_presence_of :title, :amount, :seller

end
