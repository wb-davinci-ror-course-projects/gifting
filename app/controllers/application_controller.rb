class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_gifter

  private
  def current_user
    @current_gifter ||= Gifter.find(session[:gifter_id]) if session[:gifter_id]
  end

end
