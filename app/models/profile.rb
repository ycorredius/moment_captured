# == Schema Information
#
# Table name: profiles
#
#  id           :bigint           not null, primary key
#  first_name   :string
#  last_name    :string
#  photographer :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  users_id     :bigint           not null
#
# Indexes
#
#  index_profiles_on_users_id  (users_id)
#
# Foreign Keys
#
#  fk_rails_...  (users_id => users.id)
#
class Profile < ApplicationRecord
    belongs_to :users
end
