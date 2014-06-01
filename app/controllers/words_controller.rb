class WordsController < ApplicationController

  def search
    term = params[:term]
    list = params[:list]
    first_initial = (term[0]).ord

    if first_initial < 500
      @results = Word.where("english like '%#{term}%'")
    elsif (first_initial >= 12368) && (first_initial <= 12447)
      @results = Word.where("kana like '%#{term}%'")
    elsif (first_initial >= 12448) && (first_initial <= 12543)
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

    tweet = $client.search(@word, :lang => "ja", :result => "popular").first

    respond_to do |format|
      format.json {
        render json: tweet
      }
    end
  end

  def remove_from_list
    @word = Word.find(params[:word_id])
    @list = List.find(params[:list_id])
    if @list.category == nil
      @list.words.delete(@word)
    end
    respond_to do |format|
      format.js {}
    end
  end


end
