json.array!(@orders) do |order|
  json.extract! order, :id, :obszar
  json.url order_url(order, format: :json)
end
