class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user)
  end

  def show

    if params[:id] == current_user 
       @friendship = Friendship.where(user_id: current_user)
       @badges = current_user.badges
       @users = User.all_except(current_user) 
       @user = current_user
       @lists = List.where(:user_id => current_user.id)
       @list = List.new

    else
       @friendship = Friendship.where(user_id: params[:user_id])
       @badges = User.find(params[:id]).badges
       @users = User.all_except(current_user) 
       @user = User.find(params[:id])
       @lists = List.where(:user_id => params[:id])
       @list = List.new
    end
  end
end





