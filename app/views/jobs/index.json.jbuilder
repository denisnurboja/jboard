json.array!(@jobs) do |job|
  json.extract! job, :id, :position, :location, :description, :company_id
  json.url job_url(job, format: :json)
end
