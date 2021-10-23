# == Schema Information
#
# Table name: pending_applications
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  job_application_id :integer
#  photography_job_id :integer
#
class PendingApplication < ApplicationRecord
    belongs_to :job_application, dependent: :destroy
end
