class List < ActiveRecord::Base
  has_and_belongs_to_many :words
  has_and_belongs_to_many :users



  def strip_category
    self.category = nil
  end

end



