class RemovePairCurrencyAndAddBaseCurrencyAndVariableCurrencyToExchange < ActiveRecord::Migration
  def change
    remove_column :exchanges, :pair_currency, :string
    add_column :exchanges, :base_currency, :string
    add_column :exchanges, :variable_currency, :string
  end
end
