class CompleteEvent < ActiveRecord::Base
  attr_accessible :initials, :name , :event_description, :event_name, :complete, :admin_verify, :comment
  
end
