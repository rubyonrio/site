class EventsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with @events = Event.all
  end

  def show
    respond_with event
  end

  def new
    respond_with @event = Event.new
  end

  def edit
    respond_with event
  end

  def create
    @event = Event.new(params[:event])
    flash[:notice] = 'Event was successfully created.' if @event.save
    respond_with @event
  end

  def update
    flash[:notice] = 'Event was successfully updated.' if event.update_attributes(params[:event])
    respond_with event
  end

  def destroy
    event.destroy
    respond_with event
  end

  def event
    @event ||= Event.find(params[:id])
  end
end
