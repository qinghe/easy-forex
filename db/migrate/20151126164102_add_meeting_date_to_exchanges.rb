class AddMeetingDateToExchanges < ActiveRecord::Migration
  def change
    add_column :exchanges, :meeting_date, :date
  end
end
