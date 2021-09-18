class ProfilesController < ApplicationController
    before_action :set_user, only: %i[show edit update]
    before_action :profile_params, only: %i[update]
    

    def show 
    end

    def edit
    end

    def update
        if @profile.update(profile_params)
            redirect_to profile_path(@profile)
        else
            render 'edit'
        end
    end

    private
    
    def set_user
        @profile = Profile.find_by_id(params[:id])
    end

    def profile_params
        params.require(:profile).permit(:first_name,:last_name,:bio)
    end
end
