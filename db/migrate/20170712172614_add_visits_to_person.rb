class AddVisitsToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :nvisits, :integer, :default => 0
  end
end
