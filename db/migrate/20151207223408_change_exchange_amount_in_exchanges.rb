class ChangeExchangeAmountInExchanges < ActiveRecord::Migration
  def change
    remove_column :exchanges, :exchange_amout, :integer
    add_column :exchanges, :exchange_amount, :float
  end
end
