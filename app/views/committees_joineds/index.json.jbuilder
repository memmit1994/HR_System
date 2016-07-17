json.array!(@committees_joineds) do |committees_joined|
  json.extract! committees_joined, :id, :user_id, :committee_id
  json.url committees_joined_url(committees_joined, format: :json)
end
