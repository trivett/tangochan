class ListsWords < ActiveRecord::Base
  belongs_to :list
  has_many :words
end
