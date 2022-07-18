class UsersController < ApplicationController

  def index
    @books=Book.all
    @book=Book.new
  end

  def create

  end

  def show
    @user=User.find(params[:id])
    @books=@user.books
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path,flash{notice_edit:"You have updated user successfully."}
  end

private

  def user_params
   params.require(:user).permit(:name,:profile_image,:introduction)
  end

end


