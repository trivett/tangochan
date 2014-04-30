class ListsController < ApplicationController

  def show

    @list = List.find(params[:id])
    # @word = Word.find(params)
    respond_to do |format|
      format.html { }
      format.js { }
    end
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

  def test
    @list = List.find(params[:id])
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
  def search
     @lists = List.where(:title => params[:search])
                     #  "title like ?", "%#{query}%
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end

end

