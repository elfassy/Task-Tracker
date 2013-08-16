class Event < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :initials, :name, :event_name, :event_description, :priroty, :complete, :deadline, :comment

  #def self.time
  	#time = Event.find(params[:id])
    #t = @time.deadline - Time.now
    #mm, ss = t.divmod(60)
    #hh, mm = mm.divmod(60)
    #dd, hh = hh.divmod(24)
    #@adj_time = [dd, hh, mm, ss]
 # end

  #def self.timer(event)
  	#deadline = event.deadline
  	#timer = deadline - Time.now
    #hours = timer /= 60 /= 60 /= 24
  	#puts hours
  #end

end