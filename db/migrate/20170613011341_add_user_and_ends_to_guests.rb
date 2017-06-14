class AddUserAndEndsToGuests < ActiveRecord::Migration[5.0]
  def change
    add_reference :guests, :user, foreign_key: true
    add_column :guests, :ends, :datetime
  end
end
