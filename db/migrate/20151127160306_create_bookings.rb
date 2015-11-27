class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :meeting_date
      t.string :status
      t.integer :variable_currency
      t.references :exchange, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
