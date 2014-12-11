class RecreateU < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.text :university

      t.timestamps
    end
  end
end
