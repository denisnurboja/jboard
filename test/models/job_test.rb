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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
