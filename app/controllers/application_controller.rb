class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # returns the name of the current user
  # returns nil if nobody is logged in
  def current_user
    session[:name] if session[:name]
  end

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
