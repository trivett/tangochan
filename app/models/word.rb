class Word < ActiveRecord::Base


  has_and_belongs_to_many :lists
  has_and_belongs_to_many :categories

  validates :kanji, :kana, :english, :presence => true


  def meanings
    return self.english.split(",").map(&:strip)
  end

end
