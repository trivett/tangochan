class WordsController < ApplicationController

  def search
    term = params[:term]
    list = params[:list]
    first_initial = term[0]

    if (first_initial).ord < 500
    @results = Word.where("english like '%#{term}%'")
    else
    @results = Word.where("kanji like '%#{term}%'")
    end

    @list = List.find(list)
    respond_to do |format|
      format.js {}
    end
  end


  def add_to_list

    # word_to_add = params[:word]
  #   list_to_add_to = params[:list]

  #   @list = List.find(list)
  #   @word = word_to_add

     # @list.words << @word
    # render text: params.inspect
    @word = Word.find(params[:word_id])
    @list = List.find(params[:list_id])
    @list.words << @word

    # redirect_to list_path(@list)

    respond_to do |format|
      format.js {}
    end

  end

end
