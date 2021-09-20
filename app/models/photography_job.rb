# == Schema Information
#
# Table name: photography_jobs
#
#  id          :bigint           not null, primary key
#  completed   :boolean
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  users_id    :bigint           not null
#
# Indexes
#
#  index_photography_jobs_on_users_id  (users_id)
#
# Foreign Keys
#
#  fk_rails_...  (users_id => users.id)
#
class PhotographyJob < ApplicationRecord
  belongs_to :users
end
