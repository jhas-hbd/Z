class SearchesController < ApplicationController
  def tagsearch
    @word = params[:content]
    @books = Book.where("category LIKE?","%#{@word}%")
    render "searches/tagsearch"
  end

  def check
    @area = params[:prefecture]
    @books = Book.where("prefecture LIKE?","#{@area}")
    render "searches/check"
  end



end
