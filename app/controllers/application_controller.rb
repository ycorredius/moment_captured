class ApplicationController < ActionController::Base
    def after_sign_in_path_for(user) 
        user_path(user)
    end 

    def after_sign_up_path_for(user)
        user_profile_index_path(user)
    end
end
