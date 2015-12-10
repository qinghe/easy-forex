class Review < ActiveRecord::Base

  belongs_to :reviewer_user, class_name: "User", foreign_key: "reviewer_user_id"
  belongs_to :reviewed_user, class_name: "User", foreign_key: "reviewed_user_id"
  belongs_to :booking

  validates_presence_of :reviewed_user_id, :reviewer_user_id, :rating, :comment

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }, numericality: true

end
