# == Schema Information
#
# Table name: job_applications
#
#  id                 :bigint           not null, primary key
#  address            :string
#  email              :string
#  first_name         :string
#  last_name          :string
#  previous_employer  :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photography_job_id :bigint           not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_job_applications_on_photography_job_id  (photography_job_id)
#  index_job_applications_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (photography_job_id => photography_jobs.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
