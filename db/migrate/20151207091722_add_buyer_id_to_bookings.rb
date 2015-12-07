class AddBuyerIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :buyer_id, :integer
  end
end
