class Word < ActiveRecord::Base


  has_and_belongs_to_many :lists
  has_and_belongs_to_many :categories


  def meanings
    return self.english.split(",")
  end

end
