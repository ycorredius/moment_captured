class ProfilesController < ApplicationController
    before_action :set_user, only: %i[new show create edit]
    before_action :profile_params, only: %i[create update]
    def create
        @profile = Profile.new(profile_params)
        @profile.user = @user
        if @profile.save
            redirect_to user_profile_path(@user,@profile.id)
        else    
            render 'new'
        end
    end

    def new
        @user.build_profile
    end

    def show 
    end

    def edit
    end
    def update
    end

    private
    def set_user
        @user = User.find_by_id(params[:user_id])
    end

    def profile_params
        params.require(:profile).permit(:first_name,:last_name,:bio,:handle,:photographer)
    end
end
