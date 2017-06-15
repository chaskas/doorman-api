class AddRutIndexToPeople < ActiveRecord::Migration[5.0]
  def change
    add_index :people, :rut, :unique => true
  end
end
