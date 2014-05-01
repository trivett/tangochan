class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user)
  end

  def show
    @friendship = Friendship.where(user_id: current_user.id, friend_id: params[:id])
   @list = List.new
   @words_practiced = current_user.got_right.to_s
    if params[:id] == current_user.id
       @badges = current_user.badges
       @users = User.all_except(current_user)
       @user = current_user
       @user_page = User.find(params[:id])
       @lists = List.where(:user_id => current_user.id)
    else
       @badges = User.find(params[:id]).badges
       @users = User.all_except(current_user)
       @user_page = User.find(params[:id])
       @user = User.find(params[:id])
       @lists = List.where(:user_id => params[:id])
    end

  end

  def search
    @users = User.where(:email => params[:search])
  end

  def search_city
    @users = User.where(:city => params[:search])
  end

  def profile
    @user = User.find(params[:id])
  end

  def update_score

    @user = User.find(params[:id])
    @user.got_right += params[:got_right].to_i
    @user.save
      respond_to do |format|
        format.js {}
        # format.json { render json: data.to_json }
    end
  end


end






