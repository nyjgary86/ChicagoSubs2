class RecreateN < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :neighborhood
      t.string :district

      t.timestamps
    end
  end
end
