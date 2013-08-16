class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
    	redirect_to login_url, :notice => "Please Log In"
    end
  end

  def access
  	unless session[:user_id] == 1
  		redirect_to events_url
  	end
  end
end
