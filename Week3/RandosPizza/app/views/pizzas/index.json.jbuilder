json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :name, :price, :description
  json.url pizza_url(pizza, format: :json)
end
