class JobApplicationsController < ApplicationController
    before_action :set_user

    def new
        @jobapplication = JobApplication.new
    end
    
    def create
        @application = @user.job_applications.build(jobapplication_params)
        @application.pending_applications.build
        if @application.after_save 
            redirect_to photography_jobs_path(@application)
        else 
            render "new"
        end
    end

    private     
    def set_user
        @user = User.find_by_id(current_user.id)
    end

    def jobapplication_params
        params.require.(:job_application).permit(:first_name,:last_name,:email,address_attributes:[:street,:city,:state,:zip_code])
    end
end
