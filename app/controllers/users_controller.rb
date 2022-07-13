class UsersController < ApplicationController
  def show
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def update
  end

  def index
    @user_image = UserImage.new
  end

  def edit
    @user_image = UserImage.new
  end
  
   private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
