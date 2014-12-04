class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :apttype
      t.string :size
      t.integer :price
      t.date :startdate
      t.date :enddate
      t.string :neighborhood
      t.text :streetadd
      t.string :unit
      t.string :city
      t.string :state
      t.integer :zip
      t.boolean :furnished
      t.boolean :ac
      t.boolean :gym
      t.boolean :pool
      t.boolean :doorman
      t.boolean :elevator
      t.boolean :internet
      t.boolean :cable
      t.boolean :laundryu
      t.boolean :laundryb
      t.text :headline
      t.text :description
      t.text :pictureurl
      t.string :user_id

      t.timestamps

    end
  end
end
