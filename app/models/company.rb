# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :job_applications, through: :jobs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
