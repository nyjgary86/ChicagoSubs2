class DropFavTable < ActiveRecord::Migration

  def up
    drop_table :favoritings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
