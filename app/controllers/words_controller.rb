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
    word_to_add = params[:word]



  end

end
