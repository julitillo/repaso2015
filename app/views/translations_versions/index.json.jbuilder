json.array!(@translations_versions) do |translations_version|
  json.extract! translations_version, :id, :version_id, :translation_id
  json.url translations_version_url(translations_version, format: :json)
end
