json.array!(@validations) do |validation|
  json.extract! validation, :id, :project_id, :comment, :username, :ranking
  json.url validation_url(validation, format: :json)
end
