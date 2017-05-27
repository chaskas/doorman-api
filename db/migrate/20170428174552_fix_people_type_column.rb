class FixPeopleTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :people, :type, :mtype
  end
end
