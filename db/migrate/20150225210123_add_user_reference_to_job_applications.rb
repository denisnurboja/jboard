class AddUserReferenceToJobApplications < ActiveRecord::Migration
  def change
    add_reference :job_applications, :user, index: true
    add_foreign_key :job_applications, :users
  end
end
