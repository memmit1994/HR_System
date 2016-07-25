json.array!(@committee_joins) do |committee_join|
  json.extract! committee_join, :id, :user_id, :committee_id
  json.url committee_join_url(committee_join, format: :json)
end
