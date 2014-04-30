class FriendshipsController < ApplicationController

  def index
  end

  def create
    @friendship = current_user.friendships.create(:friend_id => params[:friend_id])
      redirect_to user_path(current_user)

  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to user_path(current_user)
  end

end


