json.array!(@stages) do |stage|
  json.extract! stage, :id, :stagelevel_id, :stagedate, :amount, :status
  json.url stage_url(stage, format: :json)
end
