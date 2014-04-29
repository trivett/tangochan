class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user) 
  end

  def show
    @badges = User.find(params[:id]).badges
    @users = User.all_except(current_user) 
    @user = User.find(params[:id])
    @lists = List.where(:user_id => current_user.id)
    @list = List.new

  end

end
