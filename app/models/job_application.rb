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
#  image        :string
#  remote_image :string
#  user_id      :integer
#

class JobApplication < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  has_many :technologies, dependent: :destroy
  validates :resume, presence: true
  validates :cover_letter, presence: true
  validates :job_id, presence: true
  validates :user_id, presence: true
  mount_uploader :image, AvatarUploader
  mount_uploader :remote_image, AvatarUploader
end
