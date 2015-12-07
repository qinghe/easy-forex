class ChangeRateInExchanges < ActiveRecord::Migration
  def change
    remove_column :exchanges, :rate, :decimal, precision: 4
    add_column :exchanges, :rate, :float
  end
end
