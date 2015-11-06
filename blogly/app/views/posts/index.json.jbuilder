json.array!(@posts) do |post|
  json.extract! post, :id, :name, :slug, :content, :featured_image
  json.url post_url(post, format: :json)
end
