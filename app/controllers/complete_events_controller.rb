
class CompleteEventsController < ApplicationController

  def index
    @events = CompleteEvent.order("complete_events.initials ASC")
  end

  def edit
    @event = CompleteEvent.find(params[:id])
  end

  def show
	  @event = CompleteEvent.find(params[:id])

  end

  def new
    @event = CompleteEvent.new
  end


  def update
  	@event = CompleteEvent.find(params[:id])
  	@complete = AdminVerified.new(:initials => @event.initials, :name => @event.name, :event_name => @event.event_name, :event_description => @event.event_description, :complete => @event.complete, :admiN_verify => @event.admin_verify, :comment => @event.comment)

  	if @event.update_attributes(params[:complete_event])
      if @event.admin_verify == true
        @complete
        @complete.save
        @event.destroy
        redirect_to(:controller => :admin_view, :action => :index)
      elsif @event.admin_verify == false
        redirect_to events_url
      end
  	end
  end
end
