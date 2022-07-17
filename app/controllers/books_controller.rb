class BooksController < ApplicationController

  def index
    @book=Book.new
    @books=Book.all
  end

  def create
    @book=Book.new(books_params)
    @book.user_id=current_user.id
    @book.save
    redirect_to book_path
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
  end

  private

  def books_params
    params.require(:book).permit(:title,:body)
  end


end