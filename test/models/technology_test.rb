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

require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
