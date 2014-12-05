class FixColumnName < ActiveRecord::Migration

  def change
    rename_column :users, :university, :university_id
    rename_column :apartments, :neighborhood, :neighborhood_id
  end
end
