json.array!(@tags) do |tag|
  json.extract! tag, :id, :video_id, :name
  json.url tag_url(tag, format: :json)
end
