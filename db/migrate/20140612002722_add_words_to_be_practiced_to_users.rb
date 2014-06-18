class AddWordsToBePracticedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :words_to_be_practiced, :string, array: true, default: '{}'
  end
end
