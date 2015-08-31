json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :pass_confirmation, :password_digest, :admin?
  json.url user_url(user, format: :json)
end
