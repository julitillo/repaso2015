json.array!(@users) do |user|
  json.extract! user, :id, :name, :user, :pass
  json.url user_url(user, format: :json)
end
