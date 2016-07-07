json.array!(@credits) do |credit|
  json.extract! credit, :id, :name, :sex, :age, :placeoforigin, :upname, :tel
  json.url credit_url(credit, format: :json)
end
