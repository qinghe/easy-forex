class ChangeDateIntoDateRangeInEchange < ActiveRecord::Migration
  def change
    remove_column :exchanges, :meeting_date, :date
    add_column :exchanges, :start_date, :date
    add_column :exchanges, :end_date, :date
  end
end
