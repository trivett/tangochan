class WelcomeController < ApplicationController

  def index
    if current_user
      redirect_to user_path(current_user)
    end

    @users_count = User.all.count
    @countries = User.pluck(:country).uniq.count
    # @all_words = User.all.pluck(:got_right).inject{|sum,e| sum += e }
  end




end
