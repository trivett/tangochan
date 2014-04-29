class FriendshipsController < ApplicationController

  def index
  end

  def create
    @friendship = current_user.friendships.create(:friend_id => params[:friend_id])
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js   { }
        format.json { reder json: friendship.to_json }
      end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to 
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js   { }
        format.json { reder json: friendship.to_json }
    end
  end

end


