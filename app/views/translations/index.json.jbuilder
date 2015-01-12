json.array!(@translations) do |translation|
  json.extract! translation, :id, :aception_own_id, :aception_for_id
  json.url translation_url(translation, format: :json)
end
