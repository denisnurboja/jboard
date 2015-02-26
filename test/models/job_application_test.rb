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

require 'test_helper'

class JobApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
