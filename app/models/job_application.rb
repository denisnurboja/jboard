# == Schema Information
#
# Table name: job_applications
#
#  id           :integer          not null, primary key
#  name         :string
#  resume       :text
#  cover_letter :text
#  job_id       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class JobApplication < ActiveRecord::Base
  belongs_to :job
end
