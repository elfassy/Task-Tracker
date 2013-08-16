class AdminVerified < ActiveRecord::Base
  attr_accessible :initials, :name, :event_name, :event_description, :complete, :admiN_verify, :comment
  
  def self.search(search)
  	if search
  		where('name LIKE ?', "%#{search}%")
  	else
  		scoped
  	end
  end

end
