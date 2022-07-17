class UsersController < ApplicationController
  
  def index
    @books=Book.all(params)
    @book=Book.new
    
  end

  def show
    
  end

  def edit
  end

  def update
  end

end
