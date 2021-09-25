# == Schema Information
#
# Table name: profiles
#
#  id           :bigint           not null, primary key
#  bio          :string
#  first_name   :string           default(""), not null
#  handle       :string           default(""), not null
#  last_name    :string           default(""), not null
#  photographer :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Profile, type: :model do
    context " profile creation" do
        it"should not save without a user_id" do
            profile = Profile.new(first_name:'bob',last_name:"smith")
            expect(profile.save).to be_falsy
        end

        it"should require a user_id"do
            user = User.create!(email:"abc@gmail.com",password:"password") 
            profile = Profile.new(first_name:'bob',last_name:"smith")
            profile.user = user
            expect(subject).to be_truthy
        end
    end
end
