json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :start_date, :end_date, :report_id, :description, :sap_nr, :modi_nr
  json.url task_url(task, format: :json)
end
