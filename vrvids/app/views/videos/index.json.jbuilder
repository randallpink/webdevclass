json.array!(@videos) do |video|
  json.extract! video, :id, :link_url, :user_id, :category_id, :description
  json.url video_url(video, format: :json)
end
