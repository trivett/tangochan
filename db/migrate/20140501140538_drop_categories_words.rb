class DropCategoriesWords < ActiveRecord::Migration
  def up
    drop_table :categories_words
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
