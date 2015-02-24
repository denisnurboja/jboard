class AddAvatarToJobApplications < ActiveRecord::Migration
  def change
    add_column :job_applications, :image, :string
    add_column :job_applications, :remote_image, :string
  end
end
