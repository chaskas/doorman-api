class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :rut
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :email
      t.string :phone
      t.integer :type
      t.timestamp :last_seen

      t.timestamps
    end
  end
end
