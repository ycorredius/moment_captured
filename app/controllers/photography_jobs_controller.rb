class PhotographyJobsController < ApplicationController
    before_action :set_user, only: %i[create edit]
    before_action :set_job, only: %i[show]
    
    def index 
        @jobs = PhotographyJob.all
    end

    def new
       @photographyjob = PhotographyJob.new
    end

    def create
        @photographyjob = @user.photography_jobs.create(photography_job_params)
        if @user.save
            redirect_to profile_path(@user)
        else 
            render 'new'
        end
    end

    def show
    end 

    private
    def set_job
        @photographyjob = PhotographyJob.find_by_id(params[:id])
    end

    def set_user
        @user = User.find_by_id(current_user.id)
    end

    def photography_job_params
        params.require(:photography_job).permit(:title,:description)
    end
end