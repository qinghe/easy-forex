class Currency < ActiveRecord::Base

  has_many :exchanges, foreign_key: 'base_currency_id'
  has_many :exchanges, foreign_key: 'variable_currency_id'

end
