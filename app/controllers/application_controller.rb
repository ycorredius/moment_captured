class ApplicationController < ActionController::Base
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:profile[:first_name,:last_name,:bio]])
      end
      
    def after_sign_in_path_for(user) 
      user_profile_path(user,user.profile)
    end 
end
