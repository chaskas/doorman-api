class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.references :person, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :remaining

      t.timestamps
    end
  end
end
