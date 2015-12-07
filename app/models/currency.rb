class Currency < ActiveRecord::Base

  has_many :exchanges, foreign_key: 'currency_id'

end
