class AddIdsToCurrenciesInExchanges < ActiveRecord::Migration
  def change
    remove_column :exchanges, :variable_currency, :string
    remove_column :exchanges, :base_currency, :string
    add_column :exchanges, :variable_currency_id, :integer
    add_column :exchanges, :base_currency_id, :integer
  end
end
