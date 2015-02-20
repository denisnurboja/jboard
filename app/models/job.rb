# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  position    :string
#  location    :string
#  description :text
#  company_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :company
  has_many :job_applications
  validates :company, presence: true
  validates :position, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 500 }
  validates :location, presence: true
end
