class AddFriends < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user
      t.references :friend
    end
  end
end
