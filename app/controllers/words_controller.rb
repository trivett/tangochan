class WordsController < ApplicationController

  def search
    term = params[:term]
    list = params[:list]
    first_initial = term[0]

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
    response.cache_control.replace(:no_cache => true)
    respond_to do |format|
      format.js {}
    end
  end


  def add_to_list

    @word = Word.find(params[:word_id])
    @list = List.find(params[:list_id])
    @list.words << @word

    response.cache_control.replace(:no_cache => true)

    respond_to do |format|
      format.js { }
    end

  end


  def tweet
    @word = params[:term]
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
