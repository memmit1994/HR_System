json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone_number, :joined_yar
  json.url user_url(user, format: :json)
end
