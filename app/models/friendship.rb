class Friendship < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id', :uniq => true
  belongs_to :friend, foreign_key: 'friend_id',
    class_name: "User",  :uniq => true

   validates_uniqueness_of :user_id, :scope => [:friend_id]


  # def unique_friendship
  #     if current_user.friends.include?(@user_page)
  # end



end


