class WordsController < ApplicationController

  def search
    term = params[:term]
    @results = Word.where("kanji like '%#{term}%'")
    respond_to do |format|
      format.js {}
    end
  end
end