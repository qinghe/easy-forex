class AddRateToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :rate, :decimal, precision: 4
  end
end
