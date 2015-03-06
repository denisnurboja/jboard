ActiveAdmin.register Job do
  permit_params :position, :location, :description, :company_id
end
