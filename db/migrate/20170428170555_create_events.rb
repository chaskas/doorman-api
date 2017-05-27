class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :starts
      t.timestamp :ends

      t.timestamps
    end
  end
end
