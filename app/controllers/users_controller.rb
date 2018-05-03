class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params_user)
    if @user.save
      redirect_to user_path(@user.id)
    else
      flash.now[:error] = "Couldn't save."
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def params_user
    params.require(:user).permit(:name)
  end
end
