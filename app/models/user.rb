class User < ActiveRecord::Base

  has_many :lists
  has_and_belongs_to_many :badges
  has_many :friendships, :uniq => true
  has_many :friends, through: :friendships, :uniq => true
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id", :uniq => true
  has_many :inverse_friends, through: :inverse_friendships, :source => :user,  :uniq => true

  validates :name, :email,  presence: true
  before_create :set_right_wrongs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  def self.all_except(user)
    where.not(id: user)
  end


  def total_practiced
    return self.got_right + self.got_wrong
  end

  def batting_average
    return self.got_right / self.total_practiced
  end

  def stats
    return "Words practiced: #{self.total_practiced}. Batting average: #{self.batting_average}."
  end


  # badge functions


  def words_badges
    self.badges.delete_all
    num = self.got_right

    if num > 10
      self.badges << Badge.where(:name => "Ten Words")
    end

    if num > 50
      self.badges << (Badge.where(:name => "Fifty Words"))
    end

  end
    # elsif self.words_practiced > 50 && self.words_practiced < 100
    #     self.badges << (Badge.where(:name => "Fifty Words"))
    # elsif self.words_practiced > 100 && self.words_practiced < 500
    #     self.badges << (Badge.where(:name => "One Hundred Words"))
    # elsif self.words_practiced > 500
    #     self.badges << (Badge.where(:name => "Five Hundred Words"))

# def time_badges
#    if self.minutes_practiced > 60 && self.minutes_practiced < 300
#         self.badges << Badge.where(:name => "One Hour")
#     elsif self.minutes_practiced > 300 && self.minutes_practiced < 1500
#         self.badges << (Badge.where(:name => "Five Hours"))
#     elsif self.minutes_practiced > 1500 && self.minutes_practiced < 6000
#         self.badges << (Badge.where(:name => "Twenty Five Hours"))
#     elsif self.minutes_practiced > 6000
#         self.badges << (Badge.where(:name => "One Hundred Hours"))
#     end
# end


  def set_right_wrongs
    self.got_right = 0
    self.got_wrong = 0
  end


end







