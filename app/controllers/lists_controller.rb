class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
  end

  def new
    @user = current_user
    @list = List.new
  end

  def create
    @user = current_user
    @list = List.create(title: params[:list][:title], user_id: @user.id)
    list_id = @list.id
    redirect_to list_path(list_id)
  end

  def edit
    @list = List.find(params[:id])
    respond_to do |format|
      format.js { render js  }
    end
  end


  private
  def list_params
    params.require(:list).permit(:title)
  end

end
