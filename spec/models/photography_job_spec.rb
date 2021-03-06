# == Schema Information
#
# Table name: photography_jobs
#
#  id          :bigint           not null, primary key
#  completed   :boolean          default(FALSE)
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#  users_id    :integer
#
# Indexes
#
#  index_photography_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe PhotographyJob, type: :model do
   
end
