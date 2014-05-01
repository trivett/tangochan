class ListsController < ApplicationController

  def index
    @lists = List.all
    @users = User.all
  end

  def show
    @list = List.find(params[:id])

    # @word = Word.find(params)
    respond_to do |format|
      format.html { }
      format.js { }
      format.json { render json: @list.words }
    end

  end

  def new
    @user = current_user
    @list = List.new
  end

  def create
    @user = current_user
    @list = List.create(title: params[:list][:title], user_id: @user.id, user_name: @user.name)
    list_id = @list.id
    redirect_to list_path(list_id)
  end




  def save_list
    @user = current_user
    @user_list = current_user.lists
    @list = List.find(params[:id])

    @new_list = @list.dup
    @new_list.category = nil
    @new_list.words << @list.words
    @new_list.save
    @user_list << @new_list





    redirect_to '/'
    # response.cache_control.replace(:no_cache => true)

    # respond_to do |format|
    #   format.js { }
    # end
  end


  def test
    @list = List.find(params[:id])
    @user = current_user
    
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def flash_card
    @list = List.find(params[:id])
    @user = current_user

    respond_to do |format|
      format.html {}
      format.js {}
    end
  end


  def search

     @lists = List.where(:title => params[:search])

  end

  def destroy
    @list = List.find(params[:id])
    if @list.category == nil
      @list.destroy
    end
    redirect_to user_path(current_user)
  end


  def categories
    @categories = List.where.not(:category => nil)
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end

end

