json.array!(@creditdetails) do |creditdetail|
  json.extract! creditdetail, :id, :amount, :amountdate
  json.url creditdetail_url(creditdetail, format: :json)
end
