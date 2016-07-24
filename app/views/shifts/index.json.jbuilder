json.array!(@shifts_submitted_before) do |shift|
  json.extract! shift, :id, :start, :end, :event_id
  json.url shift_url(shift, format: :json)
end
