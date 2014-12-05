class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :apartment_id
      t.integer :favorited_by_id

      t.timestamps

    end
  end
end
