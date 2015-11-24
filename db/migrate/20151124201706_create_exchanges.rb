class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :title
      t.integer :amount

      t.timestamps null: false
    end
  end
end
