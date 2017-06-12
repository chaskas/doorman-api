class RemoveTotalGuestsAndTotalAttendeeesFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :total_guests
    remove_column :events, :total_attendees
  end
end
