class Exchange < ActiveRecord::Base

  belongs_to :user, class_name: "User", foreign_key: "user_id"

  has_one :booking, dependent: :destroy

  validates_presence_of :title, :amount

end
