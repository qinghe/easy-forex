class AddSellerIdToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :seller_id, :integer
  end
end
