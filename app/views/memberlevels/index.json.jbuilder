json.array!(@memberlevels) do |memberlevel|
  json.extract! memberlevel, :id, :name, :quota
  json.url memberlevel_url(memberlevel, format: :json)
end
