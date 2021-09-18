# == Schema Information
#
# Table name: photographers
#
#  id         :bigint           not null, primary key
#  bio        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photographer < ApplicationRecord
end
