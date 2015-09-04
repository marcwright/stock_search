json.array!(@stocks) do |stock|
  json.extract! stock, :id, :symbol, :name, :ask
  json.url stock_url(stock, format: :json)
end
