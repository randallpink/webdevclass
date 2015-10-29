json.array!(@sauces) do |sauce|
  json.extract! sauce, :id, :name, :description, :color
  json.url sauce_url(sauce, format: :json)
end
