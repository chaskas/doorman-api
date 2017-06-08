class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :rut
      t.string :phone
      t.string :address
      t.integer :gender
      t.integer :marital_status
      t.string :picture
      t.string :file
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
