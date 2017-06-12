class AddIndexToVisits < ActiveRecord::Migration[5.0]
  def change
    add_index :visits, [:event_id, :person_id]
  end
end
