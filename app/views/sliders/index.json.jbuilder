json.array!(@sliders) do |slider|
  json.extract! slider, :id, :link, :showstartdate, :showenddate
  json.url slider_url(slider, format: :json)
end
