class PhotographyJobsController < ApplicationController
    # before_action :set_user, only: %i[ new create ]
    def index 
        @jobs = PhotographyJob.all
    end

    def new
       @job = PhotographyJob.new
    end
end