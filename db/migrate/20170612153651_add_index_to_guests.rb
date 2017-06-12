class AddIndexToGuests < ActiveRecord::Migration[5.0]
  def change
    add_index :guests, [:event_id, :person_id]
  end
end
