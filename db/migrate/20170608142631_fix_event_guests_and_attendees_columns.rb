class FixEventGuestsAndAttendeesColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :guests, :total_guests
    rename_column :events, :attendees, :total_attendees
  end
end
