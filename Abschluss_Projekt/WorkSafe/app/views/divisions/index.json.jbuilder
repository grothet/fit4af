json.array!(@divisions) do |division|
  json.extract! division, :id, :bezeichnung
  json.url division_url(division, format: :json)
end
