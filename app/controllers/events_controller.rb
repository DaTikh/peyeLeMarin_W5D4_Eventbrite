class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @current_user = current_user
    @event = Event.new(params_event)
    @event.creator_id = @current_user.id
    @event.save
    if @event.save
      redirect_to event_path(@event.id)
    else
      flash.now[:danger] = "Couldn't save."
      render action: "new"
    end
  end

  def index
    if logged_in?
      @events = Event.all
      events_aging(@events)
    else
      flash[:danger] = "Veuillez vous connecter pour accéder à la liste des évènements."
      redirect_to login_path
    end
  end

  def show
    if logged_in?
      @event = Event.find(params[:id])
    else
      redirect_to login_path
    end
  end

  private

  def params_event
    params.require(:event).permit(:description, :date, :place)
  end

end
