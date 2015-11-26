class AddCityToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :city, :string
  end
end
