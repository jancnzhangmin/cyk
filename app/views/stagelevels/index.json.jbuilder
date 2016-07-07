json.array!(@stagelevels) do |stagelevel|
  json.extract! stagelevel, :id, :order, :ammount, :rate
  json.url stagelevel_url(stagelevel, format: :json)
end
