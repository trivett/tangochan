class CreateListsWords < ActiveRecord::Migration
  def change
    create_table :lists_words do |t|
    	t.integer :list_id
    	t.integer :word_id
    end
  end
end
