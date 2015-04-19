class EventsController < ApplicationController

  before_action :event_id, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      @error_messages = @event.errors.full_messages
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    if @event.destroy
      redirect_to root_path
    else
      @error_messages = @event.errors.full_messages
      render :edit
    end
  end

private

  def event_id
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :title,
      :description,
      :contact,
      :address,
      :facebook_url,
      :other_url,
      :location,
      :date,
      :avatar,
      :email,
      :avatar_cache)
  end

end
