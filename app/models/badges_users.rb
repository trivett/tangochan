class BadgesUsers < ActiveRecord::Base
  belongs_to :user
  has_many :badges
end
