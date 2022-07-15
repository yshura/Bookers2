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
   if  @user.update(user_params)
       flash[:notice] = "successfully"
       redirect_to user_path(@user.id)
   else
       @users = User.all
       render :edit
   end
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
       render :edit
    else
       redirect_to current_user
    end
  end

   private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
