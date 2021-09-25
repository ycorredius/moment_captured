class PhotographyJobsController < ApplicationController
    # before_action :set_user, only: %i[ new create ]
    def index 
        @jobs = PhotographyJob.all
    end

    def new
       @photographyjob = PhotographyJob.new
    end

    def create
        @user.photography_jobs.build(photography_job_params)
        if @user.save
            redirect_to 
        end
    end

    private

    def photography_job_params
        params.require(:photography_job).permit(:title,:description)
    end
end