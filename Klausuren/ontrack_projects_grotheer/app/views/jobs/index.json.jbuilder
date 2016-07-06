json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :project_id
  json.url job_url(job, format: :json)
end
