class FixColumnName2 < ActiveRecord::Migration
  def change
    rename_column :universities, :university, :name
    rename_column :neighborhoods, :neighborhood, :name
  end
end
