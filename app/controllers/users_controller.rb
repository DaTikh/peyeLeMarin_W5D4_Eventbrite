class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params_user)
    if @user.save
      log_in @user
      redirect_to @user
    else
      flash.now[:danger] = "Couldn't save."
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @created_events = Event.where(creator_id: @user.id)
    @current_user = @user
    @events = Event.all
    events_aging(@events)
    @upcoming = @user.attending_events & @upcoming
    @past = @user.attending_events & @past
  end

  private
  def params_user
    params.require(:user).permit(:name)
  end
end
