json.array!(@categories) do |category|
  json.extract! category, :id, :titel, :bezeichnung
  json.url category_url(category, format: :json)
end
