class ApplicationController < ActionController::Base
    
    
    def require_login
    if (logged_in? == false)
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end
  
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
   def rules
       render 'ruleset'
   end
        
end
