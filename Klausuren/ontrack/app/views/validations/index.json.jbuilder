json.array!(@validations) do |validation|
  json.extract! validation, :id, :project_id, :comment, :username, :ranking, :project_id
  json.url validation_url(validation, format: :json)
end
