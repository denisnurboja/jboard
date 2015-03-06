ActiveAdmin.register JobApplication do
  filter :user_id, as: :numeric

  permit_params :name, :resume, :user, :cover_letter, :job_id, :image, :remote_image, :thumb, :mini, :default, :remove_image, :image_cache, :user_id, technology_ids: []

  index do
    selectable_column
    column :job_id
    column :position do |job_application|
      link_to job_application.job.position, edit_admin_job_path(job_application.job)
    end
    column :user
    actions
  end

  form do |f|
    f.inputs do
      f.input :job, collection: Job.all.map { |job|
        [job.position + ' | ' + job.location + ' | ' +  job.id.to_s]
      }
      f.input :name
      f.input :user
      f.input :resume
      f.input :cover_letter
      f.input :image
      f.input :remote_image
      actions
    end
  end
end
