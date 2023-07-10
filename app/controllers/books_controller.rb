class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def search
    days = params[:days]
    price = params[:price]
    if days.present?
      @books = @books.get_days days
      render 'books/search'
    end
    if price.present?
      @books = @books.get_price price
      render 'books/search'
    end
  end

  private
  def book_params
    params.require(:book).permit(:category, :prefecture, :days, :price)
  end

end
