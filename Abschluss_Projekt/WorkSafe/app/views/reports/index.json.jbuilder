json.array!(@reports) do |report|
  json.extract! report, :id, :user_id, :report_id, :wann, :ort, :beschr_ort, :ereignis, :kategorie
  json.url report_url(report, format: :json)
end
