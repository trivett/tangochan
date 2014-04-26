class List < ActiveRecord::Base
  belongs_to :user
  has_many :words

<<<<<<< HEAD
has_and_belongs_to_many :words
belongs_to :user

end
=======
end
>>>>>>> 4dfc51852a3d7142bad44423c4f5fd0e456e0130
