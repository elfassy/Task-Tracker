class SessionsController < ApplicationController
  skip_before_filter :authorize

  layout 'login'
  def new
  end

  def create
  	if user = User.authenticate(params[:name], params[:password])
  		session[:user_id] = user.id
      user = session[:user_id]
  		if user == 1
        redirect_to(:controller => :admin_view, :action => :index)
      else
        redirect_to events_url
      end
  	else
  		redirect_to login_url, :alert => "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, :notice => "Logged out"
  end
end
