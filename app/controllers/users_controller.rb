class UsersController < ApplicationController

  def index
    @books=Book.all(params)
    @book=Book.new

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
    redirect_to user_path
  end

private
def user_params
  params.require(:user).permit(:name,:profile_image)
end



end
