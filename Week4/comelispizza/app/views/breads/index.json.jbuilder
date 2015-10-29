json.array!(@breads) do |bread|
  json.extract! bread, :id, :name, :description, :thickness_in_inches
  json.url bread_url(bread, format: :json)
end
