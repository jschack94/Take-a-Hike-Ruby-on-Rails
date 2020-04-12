class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :require_login
  
    add_flash_types :danger, :info, :success, :warning
    
    private 
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  
    def logged_in?
      !!current_user
    end
  
    def require_login
      if !logged_in?
        redirect_to root_url, warning: "You must be logged in to view that page."
      end
    end
  end
  