json.array!(@lists) do |list|
  json.extract! list, :id, :version_id, :translation_id
  json.url list_url(list, format: :json)
end
