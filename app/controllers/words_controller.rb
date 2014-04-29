class WordsController < ApplicationController

  def search
    term = params[:term]
    list = params[:list]
    @results = Word.where("kanji like '%#{term}%'") 

    @list = List.find(list)
    respond_to do |format|
      format.js {}
    end
  end


  def add_to_list
    @word = Word.find(params[:word_id])
    @list = List.find(params[:list_id])
    @list.words << @word

    respond_to do |format|
      format.js {}
    end
  end

  def remove_from_list
    @word = Word.find(params[:word_id])
    @list = List.find(params[:list_id])
    @list.words.delete(@word)

    respond_to do |format|
      format.js {}
    end
  end

end
