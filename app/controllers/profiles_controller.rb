class ProfilesController < ApplicationController
    def create
        profile = Profile.new
        profile.user = user
    end
end
