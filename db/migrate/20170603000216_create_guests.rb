class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
