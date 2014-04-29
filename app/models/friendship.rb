class Friendship < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :friend, foreign_key: 'friend_id',
    class_name: "User"

  def unique_friends 

  end

end