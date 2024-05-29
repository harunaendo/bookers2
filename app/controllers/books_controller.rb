class BooksController < ApplicationController
    def create
    @book = Book.new(book_params)
    @book.user_id = current_user
    if @book.save!
      flash[:notice] = "Book was successfully created."
     redirect_to user_path(@book.id)
    else
      @books = Book.all.order(created_id: :desc)
      flash.now[:alert] = "Unable to post"
      render :index
    end
    end

    def index
      @books = Book.all

    end


  private
  def book_params
    params.require(:book).permit(:title, :body )
  end
end