class AddGuestsAndAttendeesToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :guests, :integer, :default => 0
    add_column :events, :attendees, :integer, :default => 0
  end
end
