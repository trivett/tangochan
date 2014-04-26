class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :kanji
      t.string :kana
      t.string :english

    end
  end
end
