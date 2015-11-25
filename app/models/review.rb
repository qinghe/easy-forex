class Review < ActiveRecord::Base

  belongs_to :user
  has_one :exchange, through: :user

  validates_presence_of :user, :rating, :comment

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }, numericality: true

end
