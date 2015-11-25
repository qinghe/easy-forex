class User < ActiveRecord::Base

  has_many :exchanges,  foreign_key: 'user_id',  dependent: :destroy

end
