class List < ActiveRecord::Base
  has_and_belongs_to_many :words
  belongs_to :user

  # def add(word)
  #   self.words << word
  # end
  # def self.search(search)
  #   search_condition = "%" + search + "%"
  #   find(:all, :conditions => ['title LIKE ?', search_condition, search_condition])
  # end
end



