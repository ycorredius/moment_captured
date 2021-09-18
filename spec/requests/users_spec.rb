require 'rails_helper'

RSpec.describe "Users", type: :request do
  before(:example) do
    @user = User.create!(email:"abc@gmail.com",password:"password",profile_attributes:{first_name: 'shamus',last_name:'mcneil',bio:"this is a bio"})
  end
  it"creates user profile with nested route" do
    expect(@user.profile).to be_truthy
  end
end
