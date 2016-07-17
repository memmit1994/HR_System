json.array!(@availables) do |available|
  json.extract! available, :id, :user_id, :shift_id
  json.url available_url(available, format: :json)
end
