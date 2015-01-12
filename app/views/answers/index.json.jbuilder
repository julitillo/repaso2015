json.array!(@answers) do |answer|
  json.extract! answer, :id, :translation_id, :ans
  json.url answer_url(answer, format: :json)
end
