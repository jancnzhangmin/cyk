json.array!(@peos) do |peo|
  json.extract! peo, :id, :memberlevel_id, :name, :credit, :sex, :tel, :bankcard, :bankaccount, :contact, :contactsex, :contacttel, :businesslicense, :qrcode, :upid, :status, :wechat
  json.url peo_url(peo, format: :json)
end
