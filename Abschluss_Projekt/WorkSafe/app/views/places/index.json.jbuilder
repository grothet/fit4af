json.array!(@places) do |place|
  json.extract! place, :id, :Ort_id, :Kostenstelle, :Bezeichnung
  json.url place_url(place, format: :json)
end
