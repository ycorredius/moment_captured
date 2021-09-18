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
class Profile<ApplicationRecord
    belongs_to :user
end
