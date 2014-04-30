class Friendship < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id', :uniq => true
  belongs_to :friend, foreign_key: 'friend_id',
    class_name: "User",  :uniq => true

end


