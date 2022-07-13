class BooksController < ApplicationController
  def show
    @books = Book.find(params[:id])
    @user = current_user
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books'
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
