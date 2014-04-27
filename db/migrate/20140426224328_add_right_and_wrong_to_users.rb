class AddRightAndWrongToUsers < ActiveRecord::Migration
  def change
    add_column :users, :got_right, :integer
    add_column :users, :got_wrong, :integer
  end
end
