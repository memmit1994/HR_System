json.array!(@sessions) do |session|
  json.extract! session, :id, :start, :end, :event_id, :name, :speaker, :description
  json.url session_url(session, format: :json)
end
