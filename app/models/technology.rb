# == Schema Information
#
# Table name: technologies
#
#  id                 :integer          not null, primary key
#  name               :string
#  company_id         :integer
#  job_application_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Technology < ActiveRecord::Base
  belongs_to :company
  belongs_to :job_application
end
