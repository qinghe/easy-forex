class RemoveUserIdAndAddSellerIdBuyerIdAndBookingIdToReview < ActiveRecord::Migration
  def change
    remove_column :reviews, :user_id, :integer
    add_column :reviews, :reviewer_user_id, :integer
    add_column :reviews, :reviewed_user_id, :integer
    add_column :reviews, :booking_id, :integer, references: :bookings
  end
end
