class User < ActiveRecord::Base

  has_many :lists
  has_and_belongs_to_many :badges


validates :name, :email, :password, :password_confirmation,  presence: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


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

  def badge_exists?
    if !self.badges.include?()
  end
  end


def words_badges
    if self.words_practiced > 10 && self.words_practiced < 50
        self.badges << Badge.where(:name => "Ten Words")
    elsif self.words_practiced > 50 && self.words_practiced < 100
        self.badges << (Badge.where(:name => "Fifty Words"))
    elsif self.words_practiced > 100 && self.words_practiced < 500
        self.badges << (Badge.where(:name => "One Hundred Words"))
    elsif self.words_practiced > 500
        self.badges << (Badge.where(:name => "Five Hundred Words"))
    end
end
  
def time_badges
   if self.minutes_practiced > 60 && self.minutes_practiced < 300
        self.badges << Badge.where(:name => "One Hour")
    elsif self.minutes_practiced > 300 && self.minutes_practiced < 1500
        self.badges << (Badge.where(:name => "Five Hours"))
    elsif self.minutes_practiced > 1500 && self.minutes_practiced < 6000
        self.badges << (Badge.where(:name => "Twenty Five Hours"))
    elsif self.minutes_practiced > 6000
        self.badges << (Badge.where(:name => "One Hundred Hours"))
    end
end


end







