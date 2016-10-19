json.array!(@accidents) do |accident|
  json.extract! accident, :id, :wann, :wer, :was, :arzt, :ausfall
  json.url accident_url(accident, format: :json)
end
