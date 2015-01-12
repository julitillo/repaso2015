json.array!(@dictionaries) do |dictionary|
  json.extract! dictionary, :id, :title, :difficulty, :access, :user_id, :language_own_id, :language_for_id
  json.url dictionary_url(dictionary, format: :json)
end
