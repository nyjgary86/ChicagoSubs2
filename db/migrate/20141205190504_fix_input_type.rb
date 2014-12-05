class FixInputType < ActiveRecord::Migration
  def change
    change_column(:users, :university_id, :integer)
    change_column(:apartments, :neighborhood_id, :integer)
  end
end
