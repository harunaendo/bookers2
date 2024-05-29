class UsersController < ApplicationController

  def index
    @books = Book.all.order(created_id: :desc)
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    #@user = User.find(params[:id])
    #if @user.update(user_params)
    #flash[:notice] = "You have updated user successfully."
   # redirect_to user_show_path(@user.id)
    #else
      #flash.now[:alert] = "Unable to post"
      #render :edit
    #end
  end

  private
  def user_params
    params.require(:user).permit(:profile_image, :name, :introduction)
  end
end

