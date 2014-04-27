class User < ActiveRecord::Base

  has_many :lists


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

end

