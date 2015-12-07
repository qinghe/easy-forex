class ChangeAmountInExchanges < ActiveRecord::Migration
  def change
    remove_column :exchanges, :amount, :integer
    add_column :exchanges, :amount, :float
  end
end
