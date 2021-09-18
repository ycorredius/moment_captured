require 'rails_helper'

RSpec.describe "Profiles", type: :request do
  describe "GET profiles/new" do
    it"creates profile and redirect to show " do
      user = User.create(email:"abc@gmail.com",password:"password") 
      post "/users/#{user.id}/profiles", params:{user_id: user.id,profile: {first_name:  "Boppy"}}
      expect(response).to redirect_to(user_profile_url(user.id,assigns(:profile)))
      follow_redirect!
      expect(response).to render_template(:show)
      expect(response.body).to include("This is profile show page")
    end
  end
end
