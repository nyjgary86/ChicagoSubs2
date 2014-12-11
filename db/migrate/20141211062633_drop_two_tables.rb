class DropTwoTables < ActiveRecord::Migration

  def up
    drop_table :neighborhoods
    drop_table :universities
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
