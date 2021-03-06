class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    
    def current_user
        @current_user ||= Chef.find(session[:chef_id]) if session[:chef_id] 
    end 
    
    def logged_in?
        !!current_user
    end
    
    def require_user
        if !logged_in?
            flash[:danger] = "You must be logged in to perform this action."
            redirect_to login_path
        end
    end
end
