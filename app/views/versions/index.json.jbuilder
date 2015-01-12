json.array!(@versions) do |version|
  json.extract! version, :id, :number, :status, :dictionary_id
  json.url version_url(version, format: :json)
end
