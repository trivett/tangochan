class UsersController < ApplicationController

  def index
    @users = User.all_except(current_user)
  end

  def show
    if current_user
      current_user.words_badges
    end
    @friendship = Friendship.where(user_id: current_user.id, friend_id: params[:id])
    @list = List.new
    @words_practiced = current_user.got_right.to_s
    if params[:id] == current_user.id
      @user = current_user
      @user.word_badges

      @badges = current_user.badges
      @users = User.all_except(current_user)
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
  @user.got_wrong += params[:got_wrong].to_i

  original_array = @user.words_to_be_practiced
  new_array = original_array + params[:words_to_be_practiced]
  @user.update(words_to_be_practiced: new_array.uniq)
  # params[:words_to_be_practiced].each do |id|
  #   original_array << id
  #   @user.update()
  # end

  respond_to do |format|
    format.html
    format.json { render json: @user.to_json }
  end
end


end






