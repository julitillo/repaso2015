json.array!(@urls) do |url|
  json.extract! url, :id, :address
  json.url url_url(url, format: :json)
end
