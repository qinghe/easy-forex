class Booking < ActiveRecord::Base
  belongs_to :exchange
  belongs_to :user
end
