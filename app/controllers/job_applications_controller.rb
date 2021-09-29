class JobApplicationsController < ApplicationController
    def new
        @jobapplication = JobApplication.new
    end
    
end
