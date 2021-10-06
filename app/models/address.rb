# == Schema Information
#
# Table name: addresses
#
#  id                 :bigint           not null, primary key
#  city               :string
#  state              :string
#  street             :string
#  zip_code           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  job_application_id :bigint           not null
#
# Indexes
#
#  index_addresses_on_job_application_id  (job_application_id)
#
# Foreign Keys
#
#  fk_rails_...  (job_application_id => job_applications.id)
#
class Address < ApplicationRecord
  belongs_to :job_application
end
