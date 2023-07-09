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
    if (days != "") && (price != "")
      @books = Book.where("books.days LIKE ? AND books.price LIKE ?", "#{days}", "#{price}")
    elsif (days == "") || (price == "")
      @books = Book.where("books.days LIKE ? or books.price LIKE ?", "#{days}", "#{price}")
    else
      @books = Book.all
    end
  end

  private
  def book_params
    params.require(:book).permit(:category, :prefecture, :days, :price)
  end

end
