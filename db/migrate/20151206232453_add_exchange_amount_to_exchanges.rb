class AddExchangeAmountToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :exchange_amout, :integer
  end
end
