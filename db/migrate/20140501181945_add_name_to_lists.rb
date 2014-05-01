class AddNameToLists < ActiveRecord::Migration
  def change
    add_column :lists, :user_name, :string
  end
end
