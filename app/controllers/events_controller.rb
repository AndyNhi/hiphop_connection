class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      raise "oh no"
    end
  end

  def show
    @event = Event.find(params[:id])
  end


private

  def event_params
    params.require(:event).permit(:title, :description, :contact, :address, :facebook_url, :other_url, :location, :date, :avatar)
  end

end
