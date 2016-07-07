json.array!(@admins) do |admin|
  json.extract! admin, :id, :login, :name, :password_digest, :auth
  json.url admin_url(admin, format: :json)
end
