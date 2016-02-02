class EventsController < ApplicationController
def create
	  @event = Event.new(strong_form) 
	  
        # @event.id.push EventUser.create(user_id: current_user.id)
    if @event.save
    current_user.events << @event 
      flash[:notice] = "Your event has been created."
      redirect_to events_path
    else
      flash[:alert] = "There was a problem creating your event."
      redirect_to events_path_new
    end
  end

  def new
  	@events = Event.new
  end

  def index
  	@event = Event.all
  end

  def follow
  	@e = Event.find_by_id(params[:id])
  	if @e
  		current_user.followed_events << @e
	 end
  	redirect_to events_path, notice: "cool"
  end

  def show
  	@event = Event.find_by_id(params[:id])
  	@start = Event.find_by_id(params[:id]).event_start_date
  	@end = Event.find_by_id(params[:id]).event_end_date
  	@d = @end - @start
  	@f = (@end - @start) +1
  	if @start == @end
  		@length = @d.to_i 
  	else
  		@length = @f.to_i
  	end
  end

private

def strong_form
    params.require(:event).permit(:event_name, :event_location, :event_city, :event_state, :event_description, :event_start_date, :event_end_date, :logo, :event_status)
  end
def event_id
    params.require(:event).permit(:id)
  end


end
