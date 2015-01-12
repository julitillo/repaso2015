json.array!(@translations_versions_tests) do |translations_versions_test|
  json.extract! translations_versions_test, :id, :translations_versions_id, :test_id
  json.url translations_versions_test_url(translations_versions_test, format: :json)
end
