
class EventsController < ApplicationController
  layout 'events', :except => 'edit'
  # GET /events
  # GET /events.json
  def index
    @events = Event.order("events.initials ASC, events.priroty ASC")
    @archived = CompleteEvent.order("complete_events.created_at ASC")
    @verified = AdminVerified.order("dbo.admin_verifieds.created_at ASC").limit(10)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    @users = ['BG', 'BD', 'MB', 'AF', 'RA', 'JM']
    @name = ['Brad Garrison', 'Brian Davis', 'Matt Broach', 'Alan McFarland', 'Russell Anderson', 'Jason Milam']

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    @users = ['BG', 'BD', 'MB', 'AF', 'RA', 'JM']
    @name = ['Brad Garrison', 'Brian Davis', 'Matt Broach', 'Alan McFarland', 'Russell Anderson', 'Jason Milam']

  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        user = @event.name 
        Notifier.task_created(user).deliver
        format.html { redirect_to admin_view_index_url }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    @save = @event.update_attributes(params[:event])
	  @complete = CompleteEvent.new(:initials => @event.initials, :name => @event.name, :event_name => @event.event_name, :complete => @event.complete, :event_description => @event.event_description, :comment => @event.comment)
    
    respond_to do |format|
      if @event.update_attributes(params[:event])
  	    if @event.complete == true
          @save
    		  @complete
    		  @complete.save
    		  @event.destroy
          format.html { redirect_to :controller => :events, :action => :index}
          format.json { head :no_content }
		    elsif @event.complete == false          
          format.html { redirect_to :controller => :events, :action => :index}
          format.json { head :no_content }
		    end
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  

end
