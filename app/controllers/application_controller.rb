class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(user)
     profile_path(user.profile)
    end

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [profile_attributes: [:first_name,:last_name,:bio,:photographer]])
    end
end
