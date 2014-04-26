class User < ActiveRecord::Base

has_many :lists

validates :name, :email, :password, :password_confirmation, :native_language, :learning_language,  presence: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end

