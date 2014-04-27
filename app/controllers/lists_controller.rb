class ListsController < ApplicationController

  def index
    @lists = List.where(:user_id => current_user.id)
  end

  def create

    @list = List.create


    #  @hoot = Hoot.create(content: params[:hoot][:content], author: params[:hoot][:author])
    # # Redirect to somewhere
    # respond_to do |format|
    #   format.html { redirect_to '/' }
    #   format.js   { }
    #   format.json { render json: hoot.to_json }
    # end

  end

end
