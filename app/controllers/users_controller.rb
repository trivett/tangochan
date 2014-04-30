class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user)
  end

  def show
    @friendship = Friendship.where(user_id: current_user.id)
    @friendship = Friendship.where(user_id: current_user.id, friend_id: params[:id])
    if params[:id] == current_user.id

       @badges = current_user.badges
       @users = User.all_except(current_user)
       @user = current_user
       @user_page = User.find(params[:id])
       @lists = List.where(:user_id => current_user.id)
       @list = List.new

    else
       @badges = User.find(params[:id]).badges
       @users = User.all_except(current_user)
       @user_page = User.find(params[:id])
       @user = User.find(params[:id])
       @lists = List.where(:user_id => params[:id])
       @list = List.new
    end
  end

  def search
    @users = User.where(:email => params[:search])
  end

  def search_city
    @users = User.where(:city => params[:search])
  end
end






