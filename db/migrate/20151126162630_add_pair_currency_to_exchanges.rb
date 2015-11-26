class AddPairCurrencyToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :pair_currency, :string
  end
end
