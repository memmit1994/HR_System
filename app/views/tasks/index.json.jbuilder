json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :user_id, :seminar_id, :shift_id
  json.url task_url(task, format: :json)
end
