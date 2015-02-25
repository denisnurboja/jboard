# == Schema Information
#
# Table name: companies
#
#  id                  :integer          not null, primary key
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  company_logo        :string
#  remote_company_logo :string
#

class Company < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :technologies, dependent: :destroy
  has_many :job_applications, through: :jobs, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  mount_uploader :company_logo, CompanyLogoUploader
  mount_uploader :remote_company_logo, CompanyLogoUploader
end
