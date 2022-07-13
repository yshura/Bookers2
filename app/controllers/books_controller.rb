class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @user = current_user
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    puts(book.id)
    redirect_to book_path(book.id)
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
