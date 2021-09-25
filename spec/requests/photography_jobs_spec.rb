require 'rails_helper'

RSpec.describe "PhotographyJobs", type: :request do
    before(:example ) do
        @user = User.create!(email:"abc@gmail.com",password:"password",profile_attributes:{first_name: 'shamus',last_name:'mcneil',bio:"this is a bio"})
    end

    it"creates a photography job if not a photographer" do
        @user.photography_jobs.build(title: "photography job",description: "this is a desription")
        expect(@user.photography_jobs).not_to eq(0)
    end

    it"allows a photographer to apply to a job"
        
    end
end
