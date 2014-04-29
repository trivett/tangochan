class WordsController < ApplicationController

  def search
    term = params[:term]
    list = params[:list]
    first_initial = term[0]


    if (first_initial).ord < 500
      @results = Word.where("english like '%#{term}%'")

    if (term[0]).ord < 500
      @results = Word.where("english like '%#{term}%'")
    elsif (term[0].ord >= 12368) && (term[0].ord <= 12447)
      @results = Word.where("kana like '%#{term}%'")
    elsif (term[0].ord >= 12448) && (term[0].ord <= 12543)
      @results = Word.where("kana like '%#{term}%'")
    else
      @results = Word.where("kanji like '%#{term}%'")
    end

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


  def tweet
    @word = params[:term]
    respond_to do |format|
      format.js {}
    end
  end


end
