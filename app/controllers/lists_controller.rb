class ListsController < ApplicationController

  def index
    @lists = List.where(:user_id => current_user.id)
  end

  def new
    @user = current_user
    @list = List.new

  end

  def create
    @user = current_user
    @list = List.create(title: params[:list][:title], user_id: @user.id)
    redirect_to edit_list_path(@list)


    #  @hoot = Hoot.create(content: params[:hoot][:content], author: params[:hoot][:author])
    # # Redirect to somewhere
    # respond_to do |format|
    #   format.html { redirect_to '/' }
    #   format.js   { }
    #   format.json { render json: hoot.to_json }
    # end

  end

  def edit
    @list = List.find(params[:id])
    respond_to do |format|
      format.js   { }
      format.json { render json: list.to_json }
    end
  end


  private
  def list_params
    params.require(:list).permit(:title)
  end

end
