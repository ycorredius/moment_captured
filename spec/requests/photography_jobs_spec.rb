require 'rails_helper'

RSpec.describe "PhotographyJobs", type: :request do
    before(:example ) do
        @user = User.create!(email:"abc@gmail.com",password:"password",profile_attributes:{first_name: 'shamus',last_name:'mcneil',bio:"this is a bio"})
    end
    it"creates a photography job if not a photographer" do
        @user.photography_jobs.build(title: "photography job",description: "this is a desription")
        @user.save
        expect(@user.photography_jobs).to be_truthy
    end
end
