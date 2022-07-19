class BooksController < ApplicationController

  def index
    @books=Book.all
    @user=current_user
  end

  def create
    @book=Book.new(book_params)
    @book.user_id=current_user
    @book.save
    redirect_to book_path(current_user)
  end

  def show
    @book=Book.find(params[:id])
    @user=User.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(cuurent.user),flash[:notice_out]="Signed out successfully."
  end

  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end


end