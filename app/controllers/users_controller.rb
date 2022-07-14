class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @book = Book.new
  end

  # def create
  #   book = Book.new(book_params)
  #   book.save
  #   redirect_to '/books'
  # end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
