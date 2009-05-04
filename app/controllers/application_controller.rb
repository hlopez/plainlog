# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password_hash, :password_salt

  private

  def logged_in?
    current_user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end

  def check_login
    redirect_to posts_path unless logged_in?
  end
end
