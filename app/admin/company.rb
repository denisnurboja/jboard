ActiveAdmin.register Company do
  permit_params :name, :resume, :cover_letter, :job_id, :image, :remote_image, :thumb, :mini, :default, :remove_image, :image_cache, :user_id, technology_ids: []

  filter :technologies
  filter :name
  filter :id
end
