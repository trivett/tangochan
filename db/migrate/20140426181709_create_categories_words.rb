class CreateCategoriesWords < ActiveRecord::Migration
  def change
    create_table :categories_words do |t|
    	t.integer :category_id
    	t.integer :word_id
    end
  end
end
