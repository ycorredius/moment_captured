require 'rails_helper'

RSpec.describe "PhotographyJobs", type: :request do
    before(:example ) do
        @user = User.create!(email:"abc@gmail.com",password:"password",profile_attributes:{first_name: 'shamus',last_name:'mcneil',bio:"this is a bio"})
        @job = @user.photography_jobs.build(title: "photography job",description: "this is a desription")
    end

    it"creates a photography job if not a photographer" do
        expect(@user.photography_jobs).not_to eq(0)
    end
    before(:example) do
    end
    it"creates a pending application" do
    end
end
