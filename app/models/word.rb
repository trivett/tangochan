class Word < ActiveRecord::Base


  has_and_belongs_to_many :lists
  # has_and_belongs_to_many :categories

  validates :kana, :english, :presence => true


  def meanings
    return self.english.split(",").map(&:strip)
  end

  def type
    # find word type (specifies which alphabet) too add class to div, for various API requests
    first_initial = (@word[0]).ord
    if (first_initial >= 12368) && (first_initial <= 12543)
      return "kana"
    else
      return "kanji"
    end
    return "unknown"
  end

end
